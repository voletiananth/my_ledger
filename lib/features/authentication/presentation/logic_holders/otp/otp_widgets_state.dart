part of 'otp_cubit.dart';

@freezed
class OtpDialogState with _$OtpDialogState {
  const factory OtpDialogState.initial() = _OtpDialogInitial;
  const factory OtpDialogState.loading() = _OtpDialogLoading;
}

@freezed
class OtpButtonState with _$OtpButtonState {
  const factory OtpButtonState.clickable() = _OtpButtonClickable;
  const factory OtpButtonState.unClickable() = _OtpButtonUnClickable;
}


