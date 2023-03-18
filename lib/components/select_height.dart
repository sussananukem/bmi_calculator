import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

int height = 180;

class SelectHeight extends StatefulWidget {
  const SelectHeight({Key? key}) : super(key: key);

  @override
  State<SelectHeight> createState() => _SelectHeightState();
}

class _SelectHeightState extends State<SelectHeight> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //A text that says HEIGHT
        const Text(
          kHeightCardLabel,
          style: kLabelStyle,
        ),
        //A row that contains two children, Height VALUE and METRIC
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(height.toString(),
            style: kNumberStyle,),
            const Text(kMetric,
            style: kLabelStyle,),
          ],
        ),
        //Slider having min, max, active color, inactive color and value
        Slider(
          value: height.toDouble(),
          min: 120.0,
          max: 220.0,
          divisions: 5,
          activeColor: Colors.teal,
          inactiveColor: Colors.grey,
          onChanged: (double value) {
            setState(() {
              height = value.round();
            });
          },
        ),
      ],
    );
  }
}
