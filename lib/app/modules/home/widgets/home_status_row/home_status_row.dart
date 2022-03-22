import 'package:ev_ui_app/app/modules/home/widgets/status_cards/status_card_widget.dart';
import 'package:ev_ui_app/app/widgets/labels_copy/inline/label_value_pair_widget.dart';
import 'package:flutter/material.dart';

class HomeStatusRowWidget extends StatefulWidget {
  const HomeStatusRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeStatusRowWidget> createState() => _HomeStatusRowWidgetState();
}

class _HomeStatusRowWidgetState extends State<HomeStatusRowWidget> {
  int val = -1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      primary: false,
      child: Row(
        children: [
          Row(
            children: [
              Radio(
                value: 1,
                groupValue: val,
                onChanged: (int? value) {
                  setState(() {
                    val = value!;
                  });
                },
                activeColor: Colors.green,
              ),
              Text("Kms. added", style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 2,
                groupValue: val,
                onChanged: (int? value) {
                  setState(() {
                    val = value!;
                  });
                },
                activeColor: Colors.green,
              ),
              Text("Charging cost",
                  style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 3,
                groupValue: val,
                onChanged: (int? value) {
                  setState(() {
                    val = value!;
                  });
                },
                activeColor: Colors.green,
              ),
              Text("Rewards earned",
                  style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
        ],
      ),
    );
  }
}
