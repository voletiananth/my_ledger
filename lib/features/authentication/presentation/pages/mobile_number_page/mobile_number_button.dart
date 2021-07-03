part of 'mobile_number_page.dart';

class MobileNumberButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileNumberCubit, MobileNumberState>(
      listener: (context, state) {
        state.mobileVerifyFailedOrSuccess.fold(() {}, (a) {
          Navigator.of(context).pop();
          a.fold((l) {
            l.when(
                incorrect: () {},
                unknown: () {},
                autoRetrieval: () {
                  showDialog(
                      context: context,
                      builder: (_) => BlocProvider<OtpCubit>(
                          create: (context) => getIt<OtpCubit>(),
                          child: OtpDialog()),
                      barrierDismissible: false);
                },
                invalid: () {});
          }, (r) {
            Navigator.of(context).popAndPushNamed(HomePage.routeName);
          });
        });
      },
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.buttonState.maybeWhen(
              orElse: () => null,
              clickable: () => () {
                    context.read<ProgressHudCubit>().showHud();
                    context.read<MobileNumberCubit>().submit();
                  }),
          child: Container(
            child: Text('Continue'),
            alignment: Alignment.center,
            height: 40,
          ),
          style:
              ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
        );
      },
    );
  }
}
