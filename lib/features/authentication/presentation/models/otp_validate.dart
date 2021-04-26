import 'package:my_ledger/features/authentication/domain/entities/otp.dart';

class OtpValidate extends Otp {
  OtpValidate(String value) : super(value);

  bool get _isValid => RegExp("^[6789]{1}[0-9]*\$").hasMatch(this.value);

  bool get _isFilled => this.value.length == 6;

  B when<B>(
      {required B Function(Otp otp) onValid, required B Function() orElse}) {
    if (_isValid && _isFilled) {
      return onValid(this);
    }
    return orElse();
  }
}
