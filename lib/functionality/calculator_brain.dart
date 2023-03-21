import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight}){
    _bmi = weight / pow(height / 100, 2);
  }

  int height;
  int weight;

  late double _bmi;

  //ALT A
  // void init(){
  //   _bmi = weight / pow(height / 100, 2);
  // }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getStatusLabelText() {
    if (_bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else if (_bmi <= 24.9) {
      return 'NORMAL';
    } else if (_bmi <= 29.9) {
      return 'OVERWEIGHT';
    } else {
      return 'OBESE';
    }
  }

  String getRangeValue() {
    if (_bmi < 18.5) {
      return '0 - 18.4 kg/m2';
    } else if (_bmi <= 24.9) {
      return '18.5 - 24.9 kg/m2';
    } else if (_bmi <= 29.9) {
      return '25.0 - 29.9 kg/m2';
    } else {
      return '30.0 kg/m2 & above';
    }
  }

  String getBmiRange() {
    if (_bmi < 18.5) {
      return 'Underweight BMI range:';
    } else if (_bmi <= 24.9) {
      return 'Normal BMI range:';
    } else if (_bmi <= 29.9) {
      return 'Overweight BMI range:';
    } else {
      return 'Obese BMI range:';
    }
  }

  String getCommentOnBmi() {
    if (_bmi < 18.5) {
      return 'You are underweight. Eat up!';
    } else if (_bmi <= 24.9) {
      return 'You have a normal body weight. Good job!';
    } else if (_bmi <= 29.9) {
      return 'You are overweight. Keep pushing!';
    } else {
      return 'You are obese. Don\'t give up!';
    }
  }
}
