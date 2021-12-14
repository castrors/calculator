import 'package:calculator/calculator/calculator.dart';
import 'package:flutter/material.dart';

class CalculatorButton {
  CalculatorButton(
    this.key,
    this.title,
    this.input, {
    this.weight = 1,
    this.color = Colors.black38,
  });

  final String key;
  final String title;
  final Input input;
  final int weight;
  final Color color;
}
