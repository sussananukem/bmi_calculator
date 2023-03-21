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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //A text that says HEIGHT
        const Center(
          child: Text(
            kHeightCardLabel,
            style: kLabelStyle,
          ),
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
        //ToDo: Customize Slider using SliderTheme
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.grey,
              thumbColor: kPink,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius:
              15.0),
              //Can add overlay shape and color. But mine works perfectly
              overlayShape: const RoundSliderOverlayShape(overlayRadius:
              30),
              overlayColor: kPinkTransparent,
              activeTickMarkColor: kPink,
              inactiveTickMarkColor: Colors.grey.shade900,
             ),
            child: Slider(
              value: height.toDouble(),
              min: 120.0,
              max: 220.0,
              divisions: 100,
              onChanged: (double value) {
                setState(() {
                  height = value.round();
                  debugPrint(height.toString());
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
