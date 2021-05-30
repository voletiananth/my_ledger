import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_ledger/features/authentication/domain/entities/mobile_number.dart';
import 'package:my_ledger/features/authentication/domain/entities/mobile_number_failure.dart';
import 'package:my_ledger/features/authentication/domain/entities/otp_failure.dart';
import 'package:my_ledger/features/authentication/domain/usecases/phone_number_usecase.dart';
import 'package:my_ledger/features/authentication/presentation/models/mobile_number_validate.dart';

part 'mobile_number_cubit.freezed.dart';
part 'mobile_number_state.dart';
part 'mobile_number_widgets_state.dart';

@injectable
class MobileNumberCubit extends Cubit<MobileNumberState> {
  PhoneNumberUseCase _numberUseCase;

  MobileNumberCubit(this._numberUseCase) : super(MobileNumberState.initial());

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

  void closeDialog() {
    emit(state.copyWith.call(buttonState: MobileNumberButtonState.clickable()));
  }
}
