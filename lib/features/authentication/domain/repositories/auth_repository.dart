import 'package:dartz/dartz.dart';
import 'package:my_ledger/features/authentication/domain/entities/mobile_number.dart';
import 'package:my_ledger/features/authentication/domain/entities/mobile_number_failure.dart';
import 'package:my_ledger/features/authentication/domain/entities/otp.dart';
import 'package:my_ledger/features/authentication/domain/entities/otp_failure.dart';

abstract class AuthRepository {
  // Future<void> verifyNumber(MobileNumber mobileNumber,
  //     UseCaseResult<Unit, MobileNumberFailure> callbacks);
  //
  // Future<void> verifyOtp(Otp otp, UseCaseResult<Unit,OtpFailure> callbacks);

  Future<void> verifyNumber(MobileNumber mobileNumber,
      Function(Either<MobileNumberFailure, Unit>) callbacks);

  Future<void> verifyOtp(Otp otp, Function(Either<OtpFailure, Unit>) callbacks);

  Future<void> signOut();

  Future<Option<Unit>> authCheck();
}
