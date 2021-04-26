import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

abstract class AuthDataSource {
  Future<void> signOut();
  Future<User?> authCheck();
  Future<void> verifyPhoneNumber( {required String phoneNumber,
  required PhoneVerificationCompleted verificationCompleted,
 required PhoneVerificationFailed verificationFailed,
 required PhoneCodeSent codeSent,
 required PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout});

  Future<UserCredential> signInWithCredential(AuthCredential credential);
}

@LazySingleton(as: AuthDataSource)
class AuthRemoteDataSourceImpl implements AuthDataSource {
  FirebaseAuth _auth;
  AuthRemoteDataSourceImpl(this._auth);

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }

  @override
  Future<User?> authCheck() async {
    return _auth.currentUser;
  }

  @override
  Future<void> verifyPhoneNumber(  {required String phoneNumber,
  required PhoneVerificationCompleted verificationCompleted,
 required PhoneVerificationFailed verificationFailed,
 required PhoneCodeSent codeSent,
 required PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout}) async {
    return await _auth.verifyPhoneNumber(
        phoneNumber: '+91$phoneNumber',
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout:codeAutoRetrievalTimeout);
  }

  @override
  Future<UserCredential> signInWithCredential(AuthCredential credential) {
    return _auth.signInWithCredential(credential);
  }
}
