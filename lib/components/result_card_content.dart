import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultCardContent extends StatelessWidget {
  const ResultCardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'NORMAL',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            fontSize: 18.0,
          ),
        ),
        const Text(
          '22.1',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 80,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            'Normal BMI range:',
            style: TextStyle(
              color: Colors.white30,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
              fontSize: 16.0,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Text(
            '18.5 - 25 kg/m2',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
              fontSize: 16.0,
            ),
          ),
        ),
        const Text(
          'You have a normal body weight. Good job!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16.0,
          ),
        ),
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              color: Colors.white10,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: const Text(
                'SAVE RESULT',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  letterSpacing: 1.0,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
