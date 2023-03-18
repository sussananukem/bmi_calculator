import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class FirstRowContent extends StatelessWidget {
  const FirstRowContent({
    super.key,
    required this.myIcon,
    required this.label,
  });

  final IconData myIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: kLabelStyle,
        ),
      ],
    );
  }
}