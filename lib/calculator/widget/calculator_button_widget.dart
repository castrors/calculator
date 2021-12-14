import 'package:calculator/calculator/cubit/calculator_cubit.dart';
import 'package:calculator/calculator/model/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorButtonWidget extends StatelessWidget {
  const CalculatorButtonWidget({
    Key? key,
    required this.button,
  }) : super(key: key);

  final CalculatorButton button;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.4),
      child: Container(
        color: button.color,
        child: TextButton(
          onPressed: () => context.read<CalculatorCubit>().type(button.input),
          child: Text(
            button.title,
            key: Key(button.key),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
