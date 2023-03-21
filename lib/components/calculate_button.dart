import 'package:flutter/material.dart';

import '../constants.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
    required this.calcBtnTxt,
    required this.onTap,
  });

  //same as void Function()?
  final VoidCallback onTap;
 final String calcBtnTxt;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
          width: double.infinity,
          height: kBottomButtonHeight,
          color: kPink,
          child: Center(
            child: Text(
              calcBtnTxt,
              style: kCalcButtonTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}