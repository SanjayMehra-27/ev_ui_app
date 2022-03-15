import 'package:ev_ui_app/app/modules/home/widgets/status_cards/status_card_widget.dart';
import 'package:flutter/material.dart';

class HomeStatusRowWidget extends StatelessWidget {
  const HomeStatusRowWidget({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            '$imagePath',
            fit: BoxFit.cover,
            height: 50,
            alignment: Alignment.bottomLeft,
          ),
        ),
        const Expanded(
          flex: 2,
          child: StatusCard(
            title: 'Estimated Kms',
          ),
        ),
        const Expanded(
          flex: 2,
          child: StatusCard(
            title: 'Estimated Costs',
          ),
        ),
        const Expanded(
          flex: 2,
          child: StatusCard(
            title: 'Rewards',
          ),
        ),
      ],
    );
  }
}
