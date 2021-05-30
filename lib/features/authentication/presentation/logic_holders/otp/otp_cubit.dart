import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_ledger/features/authentication/domain/entities/otp.dart';
import 'package:my_ledger/features/authentication/domain/entities/otp_failure.dart';
import 'package:my_ledger/features/authentication/domain/usecases/otp_usecase.dart';
import 'package:my_ledger/features/authentication/presentation/models/otp_validate.dart';

part 'otp_cubit.freezed.dart';
part 'otp_state.dart';

@injectable
class OtpCubit extends Cubit<OtpState> {
  OtpUseCase _otpUseCase;
  OtpCubit(this._otpUseCase) : super(OtpState.initial());

  void submitOtp(Otp otp) async {
    await _otpUseCase.call(
        callback: (value) {
          value.fold((l) {
            emit(OtpState.error(l));
          }, (r) {
            emit(OtpState.submit());
          });
        },
        request: otp);
  }

  void otpChange(OtpValidate otpValidate) {
    otpValidate.when(onValid: (otp) {
      emit(OtpState.valid());
    }, orElse: () {
      emit(OtpState.invalid());
    });
  }
}
