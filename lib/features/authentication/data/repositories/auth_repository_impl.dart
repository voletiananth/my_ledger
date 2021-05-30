import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:my_ledger/features/authentication/data/datasources/auth_datasource.dart';
import 'package:my_ledger/features/authentication/domain/entities/mobile_number.dart';
import 'package:my_ledger/features/authentication/domain/entities/mobile_number_failure.dart';
import 'package:my_ledger/features/authentication/domain/entities/otp.dart';
import 'package:my_ledger/features/authentication/domain/entities/otp_failure.dart';
import 'package:my_ledger/features/authentication/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthDataSource _remoteDataSource;
  AuthRepositoryImpl(this._remoteDataSource);
  late String actualCode;

  @override
  Future<Option<Unit>> authCheck() async {
    return await _remoteDataSource.authCheck() == null ? none() : some(unit);
  }

  @override
  Future<void> signOut() async {
    await _remoteDataSource.signOut();
  }

  @override
  Future<void> verifyNumber(MobileNumber mobileNumber,
      Function(Either<MobileNumberFailure, Unit> p1) callbacks) async {
    print('before verify');
    await _remoteDataSource.verifyPhoneNumber(
        phoneNumber: mobileNumber.value,
        verificationCompleted: (authCredential) async {
          print('onComplete');
          await _remoteDataSource
              .signInWithCredential(authCredential)
              .then((value) {
            if (value.user != null) {
              callbacks(right(unit));
            } else {
              callbacks(left(MobileNumberFailure.unknown()));
            }
          }).catchError((error) {
            // callbacks.onFailure(MobileNumberFailure.invalid());
            callbacks(left(MobileNumberFailure.invalid()));
          });
        },
        verificationFailed: (authException) {
          print(authException);
          callbacks(left(MobileNumberFailure.incorrect()));
        },
        codeSent: (verificationId, token) {
          print('onCodeSent');
          actualCode = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          print('codeAutodetect');
          actualCode = verificationId;
          callbacks(left(MobileNumberFailure.autoRetrieval()));
        });
  }

  @override
  Future<void> verifyOtp(
      Otp otp, Function(Either<OtpFailure, Unit> p1) callbacks) async {
    final AuthCredential _authCredential = PhoneAuthProvider.credential(
        verificationId: this.actualCode, smsCode: otp.value);
    await _remoteDataSource.signInWithCredential(_authCredential).then((value) {
      if (value.user != null) {
        // callbacks.onSuccess(unit);
        callbacks(right(unit));
      } else {
        callbacks(left(OtpFailure.unknown()));
        // callbacks.onFailure(OtpFailure.unknown());
      }
    }).catchError((error) {
      // callbacks.onFailure(OtpFailure.wrongCode());
      callbacks(left(OtpFailure.wrongCode()));
    });
  }
}
