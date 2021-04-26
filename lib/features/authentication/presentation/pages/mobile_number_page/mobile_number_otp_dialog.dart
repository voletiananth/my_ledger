part of 'mobile_number_page.dart';

class OtpDialog extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _textController = useTextEditingController();
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(12),
        height: 172,
        child: Column(
          children: [
            Text(
              'Enter the OTP',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Expanded(
              child: Center(
                child: Container(
                  child: TextField(
                    controller: _textController,
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
                      context.read<MobileNumberCubit>().dialogCancelled();
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
                    onPressed: context
                        .watch<MobileNumberCubit>()
                        .state
                        .otpDialogState
                        .maybeWhen(
                            orElse: () => null,
                            valid: () => () {
                                  context.read<MobileNumberCubit>().submitOtp(
                                      OtpValidate(_textController.text));
                                }),
                    child: Container(
                      child: context
                          .watch<MobileNumberCubit>()
                          .state
                          .otpDialogState
                          .maybeWhen(
                              orElse: () => Text('Submit'),
                              loading: () => CircularProgressIndicator(
                                    valueColor:
                                        AlwaysStoppedAnimation(Colors.white),
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                  )),
                      alignment: Alignment.center,
                      height: 40,
                      width: 80,
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
