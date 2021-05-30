part of 'mobile_number_cubit.dart';

@freezed
class MobileNumberState with _$MobileNumberState {
  const factory MobileNumberState(
          {required MobileNumber mobileNumber,
          required MobileNumberButtonState buttonState,
          required MobileNumberInputState inputState,
          required Option<Either<MobileNumberFailure, Unit>>
              mobileVerifyFailedOrSuccess,
          required Option<Either<OtpFailure, Unit>> otpVerifyFailedOrSuccess}) =
      _MobileNumberState;

  factory MobileNumberState.initial() => MobileNumberState(
      otpVerifyFailedOrSuccess: none(),
      mobileNumber: MobileNumber(''),
      buttonState: MobileNumberButtonState.unClickable(),
      mobileVerifyFailedOrSuccess: none(),
      inputState: MobileNumberInputState.enabled());
}
