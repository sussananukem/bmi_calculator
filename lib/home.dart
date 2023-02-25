import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/reusable_card.dart';
import 'components/first_row_content.dart';

//PROPERTIES
const bottomButtonHeight = 80.0;
const cardColor = Color(0xFF1D1E33);
const bottomButtonColor = Colors.tealAccent;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          //First
          Expanded(
            //First Row
            child: Row(
              children: const [
                ReusableCard(
                  myColor: cardColor,
                  cardChild: FirstRowContent(
                    myIcon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
                ReusableCard(
                  myColor: cardColor,
                  cardChild: FirstRowContent(
                    myIcon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          //Second
          ReusableCard(
            myColor: cardColor,
            cardChild: Column(),
          ),
          //Third
          Expanded(
            //Second Row
            child: Row(
              children: [
                ReusableCard(
                  myColor: cardColor,
                  cardChild: Column(),
                ),
                ReusableCard(
                  myColor: cardColor,
                  cardChild: Column(),
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




