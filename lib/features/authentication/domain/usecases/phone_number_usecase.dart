import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_ledger/core/usecase/usecase_3.dart';
import 'package:my_ledger/features/authentication/domain/entities/mobile_number.dart';
import 'package:my_ledger/features/authentication/domain/entities/mobile_number_failure.dart';
import 'package:my_ledger/features/authentication/domain/repositories/auth_repository.dart';

@lazySingleton
class PhoneNumberUseCase
    extends UseCase3<MobileNumber, Unit, MobileNumberFailure> {
  AuthRepository _repository;

  PhoneNumberUseCase(this._repository);

  @override
  Future<void> call(
      {MobileNumber? request,
      required Function(Either<MobileNumberFailure, Unit> p1) callback}) async {
    await _repository.verifyNumber(request!, callback);
  }

  // @override
  // Future<void> call(
  //     {MobileNumber? request,
  //     required UseCaseResult<Unit, MobileNumberFailure> callback}) async {
  //   await _repository.verifyNumber(request!, callback);
  // }
}
