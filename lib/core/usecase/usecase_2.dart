import 'package:my_ledger/core/failure/failure.dart';

abstract class UseCase2<I, O, F extends Failure> {
  Future<void> call({I? request, required UseCaseResult<O, F> callback});
}

class UseCaseResult<S, F> {
  void Function(S data) onSuccess;
  void Function(F error) onFailure;
  UseCaseResult({required this.onFailure, required this.onSuccess});
}
