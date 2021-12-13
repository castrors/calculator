import 'package:calculator/calculator/calculator.dart';

class CalculatorButton {
  CalculatorButton(this.key, this.title, this.input, {this.weight = 1});

  final String key;
  final String title;
  final Input input;
  final int weight;
}
