import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SponsoredByWidget extends StatelessWidget {
  const SponsoredByWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Image.asset(
          'assets/images/sponsored_by@test.png',
          alignment: Alignment.bottomCenter,
          fit: BoxFit.contain,
          height: Get.height * 0.2,
        ));
  }
}
