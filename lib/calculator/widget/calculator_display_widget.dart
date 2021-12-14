import 'package:flutter/material.dart';

class CalculatorDisplayWidget extends StatelessWidget {
  const CalculatorDisplayWidget({
    Key? key,
    required this.displayValue,
  }) : super(key: key);
  final String displayValue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: Text(
          displayValue,
          style: const TextStyle(
            fontSize: 48,
            color: Colors.white,
          ),
          textAlign: TextAlign.end,
        ),
      ),
    );
  }
}
