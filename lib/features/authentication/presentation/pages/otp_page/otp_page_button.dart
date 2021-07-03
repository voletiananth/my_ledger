import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_ledger/features/authentication/presentation/logic_holders/otp/otp_cubit.dart';

class OtpPageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: context.watch<OtpCubit>().state.otpValue.fold(() => null, (a) => (){
         context.read<OtpCubit>().submitOtp(a);
      }),
      child: Container(
        child: Text('Submit'),
        alignment: Alignment.center,
        height: 40,
        width: 80,
      ),
      style: ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
    );
  }
}
