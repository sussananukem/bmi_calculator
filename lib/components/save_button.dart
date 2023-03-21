import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Container(
          color: Colors.white10,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: const Text(
            'SAVE RESULT',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              letterSpacing: 1.0,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}