import 'package:dartz/dartz.dart';
import 'package:my_ledger/core/failure/failure.dart';

abstract class UseCase3<I, O, F extends Failure> {
  Future<void> call({I? request, required Function(Either<F, O>) callback});
}
