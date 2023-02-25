import 'package:flutter/material.dart';

const labelStyle = TextStyle(
    fontSize: 18.0,
    color: Color(0xFF8D8E98)
);

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
          style: labelStyle,
        ),
      ],
    );
  }
}