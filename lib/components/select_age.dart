import 'package:bmi_calculator/components/round_icon_btn.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int age = 18;
class SelectAge extends StatefulWidget {
  const SelectAge({Key? key}) : super(key: key);

  @override
  State<SelectAge> createState() => _SelectAgeState();
}

class _SelectAgeState extends State<SelectAge> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //label text
        const Center(
         child: Text(
           kAgeCardLabel,
           style: kLabelStyle,
         ),
          ),

        //age figure in number
        Center(
          child: Text(
            age.toString(),
            style: kNumberStyle,
          ),
        ),

        //minus and add buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(icon: FontAwesomeIcons.minus, whenPressed:
            () {
              setState(() {
                age--;
              });
            },),
            const SizedBox(width: 10,),
            RoundIconButton(icon: FontAwesomeIcons.plus, whenPressed: (){
              setState(() {
                age++;
              });
            },),
          ],
        )
      ],
    );
  }
}
