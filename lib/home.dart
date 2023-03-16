import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/reusable_card.dart';
import 'components/first_row_content.dart';

//PROPERTIES
const bottomButtonHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomButtonColor = Colors.tealAccent;

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
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          //FIRST
          Expanded(
            //FIRST ROW
            child: Row(
              children: [
                //MALE
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    myColor: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: const FirstRowContent(
                      myIcon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                //FEMALE
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    myColor: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: const FirstRowContent(
                      myIcon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          //SECOND ROW
          Expanded(
            child: ReusableCard(
              onPress: (){},
              myColor: activeCardColor,
              cardChild: Column(),
            ),
          ),
          //THIRD ROW
          Expanded(
            //Second Row
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: (){},
                    myColor: activeCardColor,
                    cardChild: Column(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){},
                    myColor: activeCardColor,
                    cardChild: Column(),
                  ),
                ),
              ],
            ),
          ),
          //Button
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              width: double.infinity,
              height: bottomButtonHeight,
              color: bottomButtonColor,
            ),
          )
        ],
      ),
    );
  }
}
