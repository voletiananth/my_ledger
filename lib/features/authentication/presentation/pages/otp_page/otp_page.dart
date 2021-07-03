import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_ledger/features/authentication/presentation/logic_holders/otp/otp_cubit.dart';
import 'package:my_ledger/features/authentication/presentation/models/otp_validate.dart';

class OtpDialog extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _textController = useTextEditingController();
    return Dialog(
        child: Container(
      padding: EdgeInsets.all(12),
      height: 172,
      child: context.watch<OtpCubit>().state.otpDialogState.when(
        initial: () {
          return _dialogView(_textController, context);
        },
        loading: () {
          return Center(child: CircularProgressIndicator() ,);
        },
      ),
    ));
    // child: context.watch<OtpCubit>().state.maybeWhen(
    //     orElse: () => _dialogView(_textController, context),
    //     loading: () => Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: [
    //             CircularProgressIndicator(
    //               valueColor: AlwaysStoppedAnimation(
    //                   Theme.of(context).primaryColor),
    //               backgroundColor: Colors.white,
    //             ),
    //             Padding(
    //               padding: EdgeInsets.only(top: 12),
    //               child: Text(
    //                 'Please Wait..',
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.w700, fontSize: 20),
    //               ),
    //             )
    //           ],
    //         ))));
  }

  Column _dialogView(
      TextEditingController _textController, BuildContext context) {
    return Column(
      children: [
        Text(
          'Enter the OTP',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        Expanded(
          child: Center(
            child: Container(
              child: TextField(
                autofocus: true,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                controller: _textController,
                onChanged: (value) {
                  context
                      .read<OtpCubit>()
                      .otpChange(OtpValidate(_textController.text));
                },
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 6,
                decoration: InputDecoration(
                    isDense: true, contentPadding: EdgeInsets.all(8)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 44),
            ),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  child: Text('Cancel'),
                  alignment: Alignment.center,
                  height: 40,
                  width: 80,
                ),
                style: ElevatedButton.styleFrom(primary: Colors.red),
              ),
              ElevatedButton(
                onPressed: () {
                
                },
                child: Container(
                  child: Text('Submit'),
                  alignment: Alignment.center,
                  height: 40,
                  width: 80,
                ),
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor),
              )
            ],
          ),
        )
      ],
    );
  }
}
