
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, required this.icon, required this.whenPressed});
  final IconData icon;
  final void Function()? whenPressed;

  @override
  Widget build(BuildContext context) {

    return RawMaterialButton(
      onPressed: whenPressed,
      shape: const CircleBorder(),
      fillColor: kWeightButtonColor,
      constraints: const BoxConstraints.tightFor(
        //Apply media query here using ternary operators
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
