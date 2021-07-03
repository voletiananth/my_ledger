part of 'mobile_number_cubit.dart';

@freezed
class MobileNumberButtonState with _$MobileNumberButtonState {
  const factory MobileNumberButtonState.clickable() = _Clickable;
  const factory MobileNumberButtonState.unClickable() = _UnClickable;

}

@freezed
class MobileNumberInputState with _$MobileNumberInputState {
  const factory MobileNumberInputState.enabled() = _Enable;
  const factory MobileNumberInputState.disabled() = _Disabled;
  const factory MobileNumberInputState.error() = _Error;
}
