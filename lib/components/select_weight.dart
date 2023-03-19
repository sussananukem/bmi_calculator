import 'package:bmi_calculator/components/round_icon_btn.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int weight = 60;

class SelectWeight extends StatefulWidget {
  const SelectWeight({Key? key}) : super(key: key);

  @override
  State<SelectWeight> createState() => _SelectWeightState();
}

class _SelectWeightState extends State<SelectWeight> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Text for label text WEIGHT
        const Text(
          kWeightCardLabel,
          style: kLabelStyle,
        ),
        //Weight figure starting from 60
        Text(
          weight.toString(),
          style: kNumberStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              whenPressed: (){
                setState(() {
                  weight--;
                });
              },
            ),
            const SizedBox(width: 10,),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              whenPressed: (){
                setState(() {
                  weight++;
                });
              },
            ),
          ],
        ),
        //Two buttons, minus and plus for increasing and decreasing
      ],
    );
  }
}
