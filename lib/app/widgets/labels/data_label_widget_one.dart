import 'package:ev_ui_app/app/utils/colors_constants/color_constatnts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataLabelWidgetOne extends StatelessWidget {
  const DataLabelWidgetOne({
    Key? key,
    required this.imagePath,
    required this.value,
    required this.description,
  }) : super(key: key);
  final String imagePath;
  final String value;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // TODO: Icon
       imagePath.length > 0 ? Image.asset(
          '$imagePath',
          fit: BoxFit.contain,
          height: 70,
          width: 70,
        ) : Container(),

        // TODO: Details
        Container(
          margin: const EdgeInsets.only(right: 20,),
          height: Get.height * 0.07,
          width: Get.width * 0.55,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: const BoxDecoration(
            color: PRIMARY_COLOR,
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$value',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Text(
                    '$description',
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
