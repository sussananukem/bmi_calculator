import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/calculate_button.dart';
import '../components/reusable_card.dart';
import '../components/first_row_content.dart';
import 'package:bmi_calculator/constants.dart';

import '../components/select_age.dart';
import '../components/select_height.dart';
import '../components/select_weight.dart';

//ENUM: Always need to be outside of classes
//Just like a bool but with more than one option

enum Gender {
  male,
  female,
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //ADDED HERE BECAUSE THEY CAN CHANGE, HENCE THEY NEED TO BE IN A STATEFUL
  // WIDGET CLASS.
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          kAppBarTitle,
        ),
      ),
      //With SingleChildScrollView, the EXPANDED widget can only be used
      // within a row, not a column or any random widget in the vertical tree
      // . Use this to your advantage
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //FIRST
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //MALE
                Expanded(
                  child: ReusableCard(
                    myPadding: const EdgeInsets.symmetric(vertical: 30),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    myColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: const FirstRowContent(
                      myIcon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                //FEMALE
                Expanded(
                  child: ReusableCard(
                    myPadding: const EdgeInsets.symmetric(vertical: 30),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    myColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: const FirstRowContent(
                      myIcon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
            //SECOND ROW
            //HEIGHT SECTION
            ReusableCard(
              myPadding: const EdgeInsets.symmetric(vertical: 30),
              onPress: () {},
              myColor: kActiveCardColor,
              cardChild: const SelectHeight(),
            ),
            //THIRD ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //WEIGHT SELECTION
                Expanded(
                  child: ReusableCard(
                    myPadding: const EdgeInsets.symmetric(vertical: 30),
                    onPress: () {},
                    myColor: kActiveCardColor,
                    cardChild: const SelectWeight(),
                  ),
                ),
                //AGE SELECTION
                Expanded(
                  child: ReusableCard(
                    myPadding: const EdgeInsets.symmetric(vertical: 30),
                    onPress: () {},
                    myColor: kActiveCardColor,
                    cardChild: const SelectAge(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      //BUTTON
      bottomNavigationBar: CalculateButton(
        calcBtnTxt: kCalcButtonText,
        onTap: () {
          Navigator.pushNamed(context, '/Result');
        },
      ),
    );
  }
}
