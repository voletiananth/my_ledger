import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_ledger/features/authentication/domain/entities/otp.dart';
import 'package:my_ledger/features/authentication/domain/entities/otp_failure.dart';
import 'package:my_ledger/features/authentication/domain/usecases/otp_usecase.dart';
import 'package:my_ledger/features/authentication/presentation/models/otp_validate.dart';

part 'otp_cubit.freezed.dart';
part 'otp_state.dart';
part 'otp_widgets_state.dart';

@injectable
class OtpCubit extends Cubit<OtpState> {
  OtpUseCase _otpUseCase;
  OtpCubit(this._otpUseCase) : super(OtpState.initial());

  void submitOtp(Otp otp) async {
    emit(state.copyWith.call(
      otpDialogState: OtpDialogState.loading(),
    ));
    await _otpUseCase.call(
        callback: (value) {
          emit(state.copyWith.call(otpSuccessorFailure: some(value)));
          value.fold((l) {
            emit(state.copyWith.call(otpDialogState: OtpDialogState.initial()));
          }, (r) {});
        },
        request: otp);
  }

  void otpChange(OtpValidate otpValidate) {
    otpValidate.when(onValid: (otp) {
      emit(state.copyWith.call(
          otpValue: optionOf(otp), otpButtonState: OtpButtonState.clickable()));
    }, orElse: () {
      emit(state.copyWith.call(
          otpValue: none(), otpButtonState: OtpButtonState.unClickable()));
    });
  }
}
