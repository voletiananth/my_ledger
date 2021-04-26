import 'package:my_ledger/features/authentication/domain/entities/mobile_number.dart';

class MobileNumberValidate extends MobileNumber {
  MobileNumberValidate(String value) : super(value);
  bool get _isValid => RegExp("^[6789]{1}[0-9]*\$").hasMatch(this.value);

  bool get _isFilled => this.value.length == 10;

  B when<B>(
      {required B Function(MobileNumber mobileNumber) onValid,
      required B Function() orElse}) {
    if (_isValid && _isFilled) {
      return onValid(this);
    }
    return orElse();
  }
}
