import 'package:calculator/calculator/calculator.dart';
import 'package:calculator/calculator/cubit/calculator_cubit.dart';
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$displayValue',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                TextButton(
                  child: Text('7'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.seven),
                ),
                TextButton(
                  child: Text('8'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.eight),
                ),
                TextButton(
                  child: Text('9'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.nine),
                ),
                TextButton(
                  child: Text('/'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.division),
                ),
                TextButton(
                  child: Text('4'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.four),
                ),
                TextButton(
                  child: Text('5'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.five),
                ),
                TextButton(
                  child: Text('6'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.six),
                ),
                TextButton(
                  child: Text('*'),
                  onPressed: () => context
                      .read<CalculatorCubit>()
                      .type(Input.multiplication),
                ),
                TextButton(
                  child: const Text(
                    '1',
                    key: Key('key_one'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.one),
                ),
                TextButton(
                  child: Text('2'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.two),
                ),
                TextButton(
                  child: Text('3'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.three),
                ),
                TextButton(
                  child: Text('+'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.addition),
                ),
                TextButton(
                  child: Text('0'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.seven),
                ),
                TextButton(
                  child: Text('.'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.decimalPoint),
                ),
                TextButton(
                  child: Text('='),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.result),
                ),
                TextButton(
                  child: Text('-'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.subtraction),
                ),
                TextButton(
                  child: Text('AC'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.allClear),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
