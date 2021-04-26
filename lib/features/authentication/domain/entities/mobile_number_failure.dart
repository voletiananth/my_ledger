import 'package:my_ledger/core/failure/failure.dart';

abstract class MobileNumberFailure extends Failure {
  const MobileNumberFailure();

  const factory MobileNumberFailure.incorrect() = _IncorrectFailure;
  const factory MobileNumberFailure.unknown() = _UnknownFailure;
  const factory MobileNumberFailure.autoRetrieval() = _AutoRetrievalFailure;
  const factory MobileNumberFailure.invalid() = _Invalid;

  B when<B>(
      {required B incorrect(),
      required B unknown(),
      required B autoRetrieval(),
      required B invalid()});
  B mayBeWhen<B>(
      {B Function()? incorrect,
      B Function()? unknown,
      B Function()? autoRetrieval,
      B Function()? invalid,
      required B Function() orElse});
}

class _Invalid extends MobileNumberFailure {
  const _Invalid();

  @override
  B when<B>(
      {required B Function() incorrect,
      required B Function() unknown,
      required B Function() autoRetrieval,
      required B Function() invalid}) {
    return invalid();
  }

  @override
  B mayBeWhen<B>(
      {B Function()? incorrect,
      B Function()? unknown,
      B Function()? autoRetrieval,
      B Function()? invalid,
      required B Function() orElse}) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }
}

class _IncorrectFailure extends MobileNumberFailure {
  const _IncorrectFailure();

  @override
  B when<B>(
      {required B Function() incorrect,
      required B Function() unknown,
      required B Function() autoRetrieval,
      required B Function() invalid}) {
    return incorrect();
  }

  @override
  B mayBeWhen<B>(
      {B Function()? incorrect,
      B Function()? unknown,
      B Function()? autoRetrieval,
      B Function()? invalid,
      required B Function() orElse}) {
    if (incorrect != null) {
      return incorrect();
    }
    return orElse();
  }
}

class _UnknownFailure extends MobileNumberFailure {
  const _UnknownFailure();

  @override
  B when<B>(
      {required B Function() incorrect,
      required B Function() unknown,
      required B Function() autoRetrieval,
      required B Function() invalid}) {
    return unknown();
  }

  @override
  B mayBeWhen<B>(
      {B Function()? incorrect,
      B Function()? unknown,
      B Function()? autoRetrieval,
      B Function()? invalid,
      required B Function() orElse}) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }
}

class _AutoRetrievalFailure extends MobileNumberFailure {
  const _AutoRetrievalFailure();

  @override
  B when<B>(
      {required B Function() incorrect,
      required B Function() unknown,
      required B Function() autoRetrieval,
      required B Function() invalid}) {
    return autoRetrieval();
  }

  @override
  B mayBeWhen<B>(
      {B Function()? incorrect,
      B Function()? unknown,
      B Function()? autoRetrieval,
      B Function()? invalid,
      required B Function() orElse}) {
    if (autoRetrieval != null) {
      return autoRetrieval();
    }
    return orElse();
  }
}
