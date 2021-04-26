part of 'mobile_number_cubit.dart';

@freezed
class MobileNumberButtonState with _$MobileNumberButtonState {
  const factory MobileNumberButtonState.clickable() = _Clickable;
  const factory MobileNumberButtonState.unClickable() = _UnClickable;
  const factory MobileNumberButtonState.loading() = _Loading;
}

@freezed
class MobileNumberInputState with _$MobileNumberInputState {
  const factory MobileNumberInputState.enabled() = _Enable;
  const factory MobileNumberInputState.disabled() = _Disabled;
  const factory MobileNumberInputState.error() = _Error;
}

@freezed
class OtpDialogState with _$OtpDialogState {
  const factory OtpDialogState.loading() = _OtpLoading;
  const factory OtpDialogState.valid() = _OtpValid;
  const factory OtpDialogState.invalid() = _OtpInvalid;
  const factory OtpDialogState.error() = _OtpError;
}
