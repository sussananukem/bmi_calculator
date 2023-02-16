import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final activeCardColor = const Color(0xFF1D1E33);
  final bottomButtonColor = Colors.tealAccent;
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
              children: [
                Expanded(
                  child: ReusableCard(
                    myColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    myColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              myColor: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    myColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    myColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomButtonColor,
            margin: const EdgeInsets.only(top: 15),
            width: double.infinity,
            height: 80,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color myColor;

  const ReusableCard({super.key, required this.myColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xFF1D1E33),
      ),
    );
  }
}
