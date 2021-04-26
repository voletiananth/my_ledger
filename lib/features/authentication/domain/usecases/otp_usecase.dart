import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_ledger/core/usecase/usecase_3.dart';
import 'package:my_ledger/features/authentication/domain/entities/otp.dart';
import 'package:my_ledger/features/authentication/domain/entities/otp_failure.dart';
import 'package:my_ledger/features/authentication/domain/repositories/auth_repository.dart';

@lazySingleton
class OtpUseCase extends UseCase3<Otp, Unit, OtpFailure> {
  AuthRepository _authRepository;
  OtpUseCase(this._authRepository);

  @override
  Future<void> call(
      {Otp? request,
      required Function(Either<OtpFailure, Unit> p1) callback}) async {
    await _authRepository.verifyOtp(request!, callback);
  }

  // @override
  // Future<void> call(
  //     {Otp? request, required UseCaseResult<Unit, OtpFailure> callback}) async {
  //   await _authRepository.verifyOtp(request!, callback);
  // }
}
