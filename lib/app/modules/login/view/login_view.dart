

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
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child : SingleChildScrollView(
            child: Column(
              children: [
                // TODO: App Image LOGO
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo@test.png',
                      fit: BoxFit.contain,
                      height: 200,
                      width: 150,
                      ),
                  ],
                ),
            
                // TODO: App Name | Heading
                 Text(
                  'Smart EV Charging Pilot',
                  style: HeadingBoldBlack,
                ),
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
          
                 }, child: const Text(
                   'Forgot Password ?',
                   textAlign: TextAlign.end,
                    style: TextStyle(color: SECONDARY_COLOR),)),
                   ],
                 ),
                 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelStyle: Heading1BoldBlack,
                          fillColor: SECONDARY_COLOR.withOpacity(0.15),
                          filled: true,
                          border: InputBorder.none
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Expanded(child: Image.asset(
                    'assets/images/sponsored_by@test.png',
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.contain,
                    height: Get.height * 0.2,
                    ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}