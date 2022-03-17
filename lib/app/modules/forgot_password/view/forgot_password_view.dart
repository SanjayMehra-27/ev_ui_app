import 'package:ev_ui_app/app/modules/login/widget/login_header/login_header.dart';
import 'package:ev_ui_app/app/modules/login/widget/sponsored_by/sponsored_by_widget.dart';
import 'package:ev_ui_app/app/utils/colors_constants/color_constatnts.dart';
import 'package:ev_ui_app/app/utils/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // ignore: todo
              // TODO: App Image LOGO
              const LoginHeaderWidget(),
                
              const SizedBox(height: 50),
              // ignore: todo
              // TODO: User Email & Password Input Fields & Forgot Password Button, Reset Password Button Respectively
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        labelStyle: Heading1BoldBlack,
                        fillColor: SECONDARY_COLOR.withOpacity(0.15),
                        filled: true,
                        border: InputBorder.none),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: Get.width,
                    height: 45,
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: PRIMARY_COLOR),
                      onPressed: () {},
                      child: Text(
                        'Send Forgot Password Link',
                        style: Heading1White,
                      ),
                    ),
                    // ignore: todo
                    // TODO: Sign in button
                  ),
                ],
              ),
          
              // ignore: todo
              // TODO: Sponsored by [Image]
              const SponsoredByWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
