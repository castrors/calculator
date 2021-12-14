import 'package:calculator/calculator/calculator.dart';
import 'package:calculator/calculator/cubit/calculator_cubit.dart';
import 'package:calculator/calculator/model/model.dart';
import 'package:calculator/calculator/widget/calculator_display_widget.dart';
import 'package:calculator/calculator/widget/widget.dart';
import 'package:calculator/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalculatorCubit(Calculator()),
      child: const CalculatorView(),
    );
  }
}

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final displayValue = context.select((CalculatorCubit cubit) => cubit.state);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.calculatorAppBarTitle)),
      body: Container(
        color: Colors.black54,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    CalculatorDisplayWidget(
                      displayValue: displayValue.toString(),
                    ),
                  ],
                ),
              ),
              ...getButtons().map(
                (row) => Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: row
                        .map(
                          (button) => Expanded(
                            flex: button.weight,
                            child: CalculatorButtonWidget(
                              button: button,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
