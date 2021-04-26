
import 'package:dartz/dartz.dart';
import 'package:my_ledger/core/failure/failure.dart';

abstract class UseCase1<I, O, F extends Failure> {

  Future<Either<F, O>> call({I? request});
}


