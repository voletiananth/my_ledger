import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_ledger/features/authentication/domain/entities/mobile_number.dart';
import 'package:my_ledger/features/authentication/domain/entities/mobile_number_failure.dart';
import 'package:my_ledger/features/authentication/domain/entities/otp.dart';
import 'package:my_ledger/features/authentication/domain/entities/otp_failure.dart';
import 'package:my_ledger/features/authentication/domain/usecases/otp_usecase.dart';
import 'package:my_ledger/features/authentication/domain/usecases/phone_number_usecase.dart';
import 'package:my_ledger/features/authentication/presentation/models/mobile_number_validate.dart';
import 'package:my_ledger/features/authentication/presentation/models/otp_validate.dart';

part 'mobile_number_cubit.freezed.dart';
part 'mobile_number_state.dart';
part 'mobile_number_widgets_state.dart';

@injectable
class MobileNumberCubit extends Cubit<MobileNumberState> {
  PhoneNumberUseCase _numberUseCase;
  OtpUseCase _otpUseCase;
  MobileNumberCubit(this._numberUseCase, this._otpUseCase)
      : super(MobileNumberState.initial());

  void submit() async {
    emit(state.copyWith.call(
        buttonState: MobileNumberButtonState.loading(),
        inputState: MobileNumberInputState.disabled()));
    await _numberUseCase.call(
        callback: (value) {
          emit(state.copyWith
              .call(mobileVerifyFailedOrSuccess: optionOf(value)));
          value.fold((l) {
            l.mayBeWhen(orElse: () {
              emit(state.copyWith.call(
                  inputState: MobileNumberInputState.enabled(),
                  buttonState: MobileNumberButtonState.clickable(),
                  mobileVerifyFailedOrSuccess: none()));
            }, autoRetrieval: () {
              emit(state.copyWith.call(mobileVerifyFailedOrSuccess: none()));
            });
          }, (r) => {});
        },
        request: state.mobileNumber);
  }

  void change(MobileNumberValidate value) {
    emit(value.when(
        onValid: (mn) => state.copyWith.call(
            buttonState: MobileNumberButtonState.clickable(), mobileNumber: mn),
        orElse: () => state.copyWith
            .call(buttonState: MobileNumberButtonState.unClickable())));
  }

  void submitOtp(Otp otp) async {
    emit(state.copyWith.call(otpDialogState: OtpDialogState.loading()));
    await _otpUseCase.call(
        callback: (value) {
          emit(state.copyWith.call(otpVerifyFailedOrSuccess: optionOf(value)));
          value.fold((l) {
            emit(state.copyWith.call(otpDialogState: OtpDialogState.error()));
          }, (r) {});
        },
        request: otp);
  }

  void otpChange(OtpValidate otpValidate) {
    otpValidate.when(onValid: (otp) {
      emit(state.copyWith.call(otpDialogState: OtpDialogState.valid()));
    }, orElse: () {
      emit(state.copyWith.call(otpDialogState: OtpDialogState.invalid()));
    });
  }

  void dialogCancelled() {
    emit(state.copyWith.call(
        inputState: MobileNumberInputState.enabled(),
        buttonState: MobileNumberButtonState.clickable(),
        otpVerifyFailedOrSuccess: none(),
        otpDialogState: OtpDialogState.invalid()));
  }
}
