import 'package:calculator/calculator/calculator.dart';
import 'package:calculator/calculator/model/calculator_button.dart';
import 'package:flutter/material.dart';

List<List<CalculatorButton>> getButtons() => [
      [
        CalculatorButton(
          'key_allClear',
          'AC',
          Input.allClear,
          weight: 3,
          color: Colors.black45,
        ),
        CalculatorButton(
          'key_division',
          '/',
          Input.division,
          color: Colors.orange,
        ),
      ],
      [
        CalculatorButton('key_seven', '7', Input.seven),
        CalculatorButton('key_eight', '8', Input.eight),
        CalculatorButton('key_nine', '9', Input.nine),
        CalculatorButton(
          'key_multiplication',
          '*',
          Input.multiplication,
          color: Colors.orange,
        ),
      ],
      [
        CalculatorButton('key_four', '4', Input.four),
        CalculatorButton('key_five', '5', Input.five),
        CalculatorButton('key_six', '6', Input.six),
        CalculatorButton(
          'key_subtraction',
          '-',
          Input.subtraction,
          color: Colors.orange,
        ),
      ],
      [
        CalculatorButton('key_one', '1', Input.one),
        CalculatorButton('key_two', '2', Input.two),
        CalculatorButton('key_three', '3', Input.three),
        CalculatorButton(
          'key_addition',
          '+',
          Input.addition,
          color: Colors.orange,
        ),
      ],
      [
        CalculatorButton('key_zero', '0', Input.zero, weight: 2),
        CalculatorButton('key_decimalPoint', '.', Input.decimalPoint),
        CalculatorButton(
          'key_result',
          '=',
          Input.result,
          color: Colors.orange,
        ),
      ],
    ];
