part of 'mobile_number_page.dart';

class MobileNumberTextField extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: TextInputType.phone,
        maxLength: 10,
        enabled: context
            .watch<MobileNumberCubit>()
            .state
            .inputState
            .maybeWhen(orElse: () => true, disabled: () => false),
        // controller: context.read<MobileNumberBloc>().textController,
        style: TextStyle(fontWeight: FontWeight.w700),
        onChanged: (value) {
          context.read<MobileNumberCubit>().change(MobileNumberValidate(value));
        },
        decoration: InputDecoration(
            border: UnderlineInputBorder(),
            prefixIconConstraints: BoxConstraints.tight(Size(32, 32)),
            prefixIcon: Container(
              child: Center(
                child: Text(
                  '+91 ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              padding: EdgeInsets.only(top: 0),
            ),
            hintText: 'Mobile Number',
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 12)));
  }
}
