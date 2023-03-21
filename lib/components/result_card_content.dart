import 'package:bmi_calculator/components/save_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultCardContent extends StatelessWidget {
  const ResultCardContent({super.key,
    required this.statusLabelText,
    required this.bmiValue,
    required this.bmiRange,
    required this.rangeValue,
    required this.commentOnBmi,
});

  final String statusLabelText;
  final String bmiValue;
  final String bmiRange;
  final String rangeValue;
  final String commentOnBmi;

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          statusLabelText,
          style: kStatusLabelTextStyle,
        ),
        Text(
          bmiValue,
          style: kBmiValue,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            bmiRange,
            style: kBmiRange,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text(
            rangeValue,
            style: kRangeValue,
          ),
        ),
        Text(
          commentOnBmi,
          textAlign: TextAlign.center,
          style: kCommentOnBmi,
        ),
        const SaveButton()
      ],
    );
  }
}


