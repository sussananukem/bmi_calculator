import 'package:flutter/material.dart';

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
                ReusableCard(myColor: Color(0xFF1D1E33),),
                ReusableCard(myColor: Color(0xFF1D1E33),),
              ],
            ),
          ),

          const ReusableCard(myColor: Color(0xFF1D1E33),),

          Expanded(
            child: Row(
              children: const [
                ReusableCard(myColor: Color(0xFF1D1E33),),
                ReusableCard(myColor: Color(0xFF1D1E33),),
              ],
            ),
          ),
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