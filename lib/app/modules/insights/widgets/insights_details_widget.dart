import 'package:ev_ui_app/app/widgets/labels/data_label_widget_one.dart';
import 'package:flutter/material.dart';
import 'package:ev_ui_app/app/utils/colors_constants/color_constatnts.dart';

class InsightsDetailsWidget extends StatelessWidget {
  const InsightsDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
         DataLabelWidgetOne(
            imagePath: "assets/images/kms@test.png",
            value: '2,500 kms',
            description: "Run"),
         DataLabelWidgetOne(
            imagePath: "assets/images/nos@test.png",
            value: '250 nos',
            description: "Trees planted"),
         DataLabelWidgetOne(
            imagePath: "assets/images/dollar@test.png",
            value: '\$12,500',
            description: "Spent on charging"),
         DataLabelWidgetOne(
            imagePath: "assets/images/earned@test.png",
            value: '\$50',
            description: "Earned by DR participation"),
         DataLabelWidgetOne(
            imagePath: "assets/images/saved@test.png",
            value: '\$5000',
            description: "Saved through smart charging"),
      ],
    );
  }
}
