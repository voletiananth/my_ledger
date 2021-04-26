part of 'mobile_number_page.dart';

class MobileNumberLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'We need your mobile number to start',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
      ),
    );
  }
}
