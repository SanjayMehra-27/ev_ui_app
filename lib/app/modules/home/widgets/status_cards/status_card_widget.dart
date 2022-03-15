import 'package:ev_ui_app/app/utils/colors_constants/color_constatnts.dart';
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.only(left: 10, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: SECONDARY_COLOR.withOpacity(0.5),
      ),
      child: Text(
        '$title',
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 18, color: DARK_COLOR),
      ),
    );
  }
}
