import 'package:dartz/dartz.dart';

import 'package:my_ledger/core/failure/failure.dart';

abstract class UseCase<REQUEST, RESPONSE> {

  Future<Either<Failure, RESPONSE>> call({REQUEST? request});
}
