import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key, required this.myColor, required this.cardChild, required this
          .onPress, this.myPadding});

  final Color myColor;
  final Widget cardChild;
  final EdgeInsetsGeometry? myPadding;
  final void Function()? onPress; //or Voidcallback

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: myPadding,
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