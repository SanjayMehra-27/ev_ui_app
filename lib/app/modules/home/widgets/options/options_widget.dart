import 'package:ev_ui_app/app/modules/home/controller/home_controller.dart';
import 'package:ev_ui_app/app/utils/colors_constants/color_constatnts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class HomeOptionsWidget extends StatelessWidget {
  HomeOptionsWidget({Key? key}) : super(key: key);

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            // todo: add label name
            Expanded(
              child: Text(
                'Charging',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            // todo: add a switch button for on/off
            Obx(
              () => FlutterSwitch(
                width: 90.0,
                height: 40.0,
                activeColor: PRIMARY_COLOR,
                valueFontSize: 25.0,
                toggleSize: 45.0,
                value: homeController.isChargingSwitched.value,
                borderRadius: 30.0,
                padding: 8.0,
                showOnOff: true,
                onToggle: (val) {
                  homeController.isChargingSwitched.value = val;
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 18),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // todo: add label name
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    'Smart Charge',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                 const Text(
                    'Charge during off peak hours only',
                    style: TextStyle(fontSize: 16, color: SECONDARY_COLOR),
                  ),
                ],
              ),
            ),
            // todo: add a switch button for on/off
            Obx(
              () => FlutterSwitch(
                width: 90.0,
                height: 40.0,
                activeColor: PRIMARY_COLOR,
                valueFontSize: 25.0,
                toggleSize: 45.0,
                value: homeController.isSmartChargingSwitched.value,
                borderRadius: 30.0,
                padding: 8.0,
                showOnOff: true,
                onToggle: (val) {
                  homeController.isSmartChargingSwitched.value = val;
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            // todo: add label name
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    'Opt in to the demand response events',
                     style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Text(
                    'Earned Rewards',
                    style: TextStyle(fontSize: 16, color: SECONDARY_COLOR),
                  ),
                ],
              ),
            ),
            // todo: add a switch button for on/off
            Obx(
              () => FlutterSwitch(
                width: 90.0,
                height: 40.0,
                activeColor: PRIMARY_COLOR,
                valueFontSize: 25.0,
                toggleSize: 45.0,
                value: homeController.isEarnedRewardSwitched.value,
                borderRadius: 30.0,
                padding: 8.0,
                showOnOff: true,
                onToggle: (val) {
                  homeController.isEarnedRewardSwitched.value = val;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
