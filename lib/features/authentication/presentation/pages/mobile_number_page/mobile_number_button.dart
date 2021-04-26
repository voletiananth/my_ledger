part of 'mobile_number_page.dart';

class MobileNumberButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileNumberCubit, MobileNumberState>(
      listener: (context, state) {
        state.mobileVerifyFailedOrSuccess.fold(() {}, (a) {
          a.fold((l) {
            l.when(
                incorrect: () {},
                unknown: () {},
                autoRetrieval: () {
                  showDialog(
                      context: context,
                      builder: (_) => OtpDialog(),
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
          // onPressed: () async {
          //   await showDialog(context: context, builder: (_) => OtpDialog());
          // },
          onPressed: state.buttonState.maybeWhen(
              orElse: () => null,
              loading: () {},
              clickable: () => () async {
                    context.read<MobileNumberCubit>().submit();
                  }),
          child: Container(
            child: state.buttonState.maybeWhen(
                orElse: () => Text('Continue'),
                loading: () => CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                      backgroundColor: Theme.of(context).primaryColor,
                    )),
            alignment: Alignment.center,
            height: 40,
          ),
          style: ElevatedButton.styleFrom(primary: Colors.black),
        );
      },
    );
  }
}
