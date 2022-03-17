import 'package:ev_ui_app/app/utils/enums/global_enums.dart';
import 'package:ev_ui_app/app/utils/style/style.dart';
import 'package:flutter/material.dart';

class LabelValuePairWidget extends StatelessWidget {
  LabelValuePairWidget({
    Key? key,
    required this.value,
    required this.label,
    this.labelType,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.labelStyle,
    this.valueStyle,
    this.spacing,
  }) : super(key: key);

  final String value;
  final String label;
  final TextStyle? labelStyle;
  final TextStyle? valueStyle;
  final double? spacing;
  LabelType? labelType = LabelType.TOP_DOWN;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return labelType?.index == LabelType.TOP_DOWN.index
        ? Column(
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
            children: [
              Text(
                '$label',
                style: labelStyle ?? Heading1BoldBlack,
                softWrap: false,
                overflow: TextOverflow.fade,
              ),
              SizedBox(height: spacing ?? 8),
              Text(
                '${value != null ? value : 0} ',
                softWrap: false,
                overflow: TextOverflow.fade,
                style: valueStyle ?? Theme.of(context).textTheme.subtitle1,
              ),
            ],
          )
        : Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              crossAxisAlignment:
                  crossAxisAlignment ?? CrossAxisAlignment.start,
              mainAxisAlignment:
                  mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$label',
                  style: labelStyle ?? Heading1BoldBlack,
                  softWrap: false,
                  overflow: TextOverflow.fade,
                ),
                SizedBox(height: spacing ?? 8),
                Text(
                  '${value != null ? value : 0} ',
                  style: labelStyle ?? Theme.of(context).textTheme.subtitle1,
                  softWrap: false,
                  overflow: TextOverflow.fade,
                ),
              ],
            ),
          );
  }
}
