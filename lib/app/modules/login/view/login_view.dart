import 'package:ev_ui_app/app/modules/login/widget/login_header/login_header.dart';
import 'package:ev_ui_app/app/modules/login/widget/sponsored_by/sponsored_by_widget.dart';
import 'package:ev_ui_app/app/utils/colors_constants/color_constatnts.dart';
import 'package:ev_ui_app/app/utils/style/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      labelStyle: Heading1BoldBlack,
                      fillColor: SECONDARY_COLOR.withOpacity(0.15),
                      filled: true,
                      border: InputBorder.none,
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 0,
                        minHeight: 0,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          try {
                            Get.toNamed('/forgot-password');
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'FORGOT ?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: SECONDARY_COLOR,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: Get.width,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        labelStyle: Heading1BoldBlack,
                        fillColor: SECONDARY_COLOR.withOpacity(0.15),
                        filled: true,
                        border: InputBorder.none,
                        suffixIconConstraints: const BoxConstraints(
                          minWidth: 0,
                          minHeight: 0,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            try {
                              Get.toNamed('/Reset-Password');
                            } catch (e) {
                              print(e);
                            }
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'RESET ?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: SECONDARY_COLOR,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // ignore: todo
              // TODO: Sign in button
              SizedBox(
                width: Get.width,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: PRIMARY_COLOR),
                  onPressed: () {
                    try {
                      Get.toNamed('/home');
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: Text(
                    'Sign In',
                    style: Heading1White,
                  ),
                ),
              ),

              // ignore: todo
              // TODO: Register Page Link
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: body(context),
                  children: [
                    TextSpan(
                      mouseCursor: MouseCursor.uncontrolled,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed('/home');
                        },
                      text: 'Register',
                      style: !Get.isDarkMode
                          ? Theme.of(context).textTheme.titleSmall
                          : Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: PRIMARY_COLOR,
                              ),
                    ),
                    const TextSpan(text: ' here.'),
                  ],
                ),
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
