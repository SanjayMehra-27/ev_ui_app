import 'package:ev_ui_app/app/utils/style/style.dart';
import 'package:flutter/material.dart';
class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/logo@test.png',
          fit: BoxFit.contain,
          height: 200,
          width: 150,
        ),
        // TODO: App Name | Heading
        Text(
          'Smart EV Charging Pilot',
          style: HeadingBoldBlack,
        ),
      ],
    );
  }
}
