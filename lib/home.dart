import 'package:flutter/material.dart';

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
          Expanded(
            child: Row(
              children: const [
                ReusableCard(myColor: cardColor,),
                ReusableCard(myColor: cardColor,),
              ],
            ),
          ),

          const ReusableCard(myColor: cardColor,),

          Expanded(
            child: Row(
              children: const [
                ReusableCard(myColor: cardColor,),
                ReusableCard(myColor: cardColor,),
              ],
            ),
          ),

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

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.myColor});

  final Color myColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: myColor,
            borderRadius: BorderRadius.circular(10),
          ),

        ),
      ),
    );
  }
}