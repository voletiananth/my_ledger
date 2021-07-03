part of 'otp_cubit.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState(
      {required OtpDialogState otpDialogState,
      required OtpButtonState otpButtonState,
      required Option<Either<OtpFailure,Unit>> otpSuccessorFailure,
      required Option<Otp> otpValue}) = _OtpState;

  factory OtpState.initial() => OtpState(
    otpSuccessorFailure: none(),
      otpButtonState: OtpButtonState.unClickable(),
      otpDialogState: OtpDialogState.initial(),
      otpValue: none());
}
 