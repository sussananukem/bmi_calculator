import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key, required this.myColor, required this.cardChild});

  final Color myColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: myColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: cardChild,
        ),
      ),
    );
  }
}