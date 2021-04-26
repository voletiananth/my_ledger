import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_ledger/core/failure/failure.dart';
import 'package:my_ledger/core/usecase/usecase.dart';
import 'package:my_ledger/features/authentication/domain/repositories/auth_repository.dart';

@lazySingleton
class AuthCheckUseCase extends UseCase<Unit, Option<Unit>> {
  AuthRepository _repository;

  AuthCheckUseCase(this._repository);

  @override
  Future<Either<Failure, Option<Unit>>> call({Unit? request}) async {
    return right(await _repository.authCheck());
  }
}
