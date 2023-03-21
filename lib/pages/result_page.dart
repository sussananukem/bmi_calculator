import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/pages/home.dart';
import 'package:flutter/material.dart';

import '../components/result_card_content.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  kResultHeaderText,
                  textAlign: TextAlign.center,
                  style: kResultHeaderStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical:
                10.0),
                child: ReusableCard(
                  myPadding: const EdgeInsets.all(30.0),
                  myColor: kActiveCardColor,
                  cardChild: const ResultCardContent(),
                  onPress: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CalculateButton(
        calcBtnTxt: kReCalcButtonText,
        onTap: (){
          Navigator.pop(context, const MyHomePage());
        },
      ),
    );
  }
}
