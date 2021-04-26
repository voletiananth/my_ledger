import 'package:my_ledger/core/failure/failure.dart';

abstract class OtpFailure extends Failure {
  const OtpFailure();

  const factory OtpFailure.unknown() = _Unknown;
  const factory OtpFailure.wrongCode() = _WrongCode;

  B when<B>({required B unknown(), required B wrongCode()});
  B whenOrElse<B>({required B orElse(), B unknown(), wrongCode()});
}

class _WrongCode extends OtpFailure {
  const _WrongCode();

  @override
  B when<B>({required B Function() unknown, required B Function() wrongCode}) {
    return wrongCode();
  }

  @override
  B whenOrElse<B>(
      {required B Function() orElse,
      B Function()? unknown,
      Function()? wrongCode}) {
    if (wrongCode != null) {
      return wrongCode();
    }
    return orElse();
  }
}

class _Unknown extends OtpFailure {
  const _Unknown();

  @override
  B when<B>({required B Function() unknown, required B Function() wrongCode}) {
    return unknown();
  }

  @override
  B whenOrElse<B>(
      {required B Function() orElse,
      B Function()? unknown,
      Function()? wrongCode}) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }
}
