
import 'package:ev_ui_app/app/modules/login/widget/login_header/login_header.dart';
import 'package:ev_ui_app/app/modules/login/widget/sponsored_by/sponsored_by_widget.dart';
import 'package:ev_ui_app/app/utils/colors_constants/color_constatnts.dart';
import 'package:ev_ui_app/app/utils/style/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Expanded(
            child: Column(
              children: [
                // TODO: App Image LOGO
                const LoginHeaderWidget(),
            
                const SizedBox(height: 50),
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
                        border: InputBorder.none
                      ),
                     ),
                 TextButton(onPressed: (){
                  try {
                     Get.toNamed('/forgot-password'); 
                  } catch (e) {
                    print(e);
                  }                  
                 }, child: const Text(
                   'Forgot Password ?',
                   textAlign: TextAlign.end,
                    style: TextStyle(color: SECONDARY_COLOR),)),
                   ],
                 ),
                 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: Get.width,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            labelStyle: Heading1BoldBlack,
                            fillColor: SECONDARY_COLOR.withOpacity(0.15),
                            filled: true,
                            border: InputBorder.none
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Reset ?',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: SECONDARY_COLOR),
                        )),
                    ],
                  ),
                    
                // TODO: Sign in button
                SizedBox(
                  width: Get.width,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: PRIMARY_COLOR
                    ),
                    onPressed: (){
                  }, child: Text(
                    'Sign In',
                    style: Heading1White,
                  ),),
                ),
            
                // TODO: Register Page Link
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        mouseCursor: MouseCursor.uncontrolled,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed('/home');
                          },
                        text: 'Register',
                        style: const TextStyle(
                          color: DARK_COLOR,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextSpan(text: ' here.'),
                    ],
                  ),
                ),
            
                // TODO: Sponsored by [Image]
                const SponsoredByWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


