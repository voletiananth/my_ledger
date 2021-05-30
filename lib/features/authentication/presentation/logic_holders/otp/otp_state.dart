part of 'otp_cubit.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState.loading() = _OtpLoading;
  const factory OtpState.valid() = _OtpValid;
  const factory OtpState.invalid() = _OtpInvalid;
  const factory OtpState.initial() = _OtpInitial;
  const factory OtpState.error(OtpFailure otpFailure) = _OtpError;
  const factory OtpState.submit() = _OtpSubmit;
}
