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
            padding: const EdgeInsets.all(8),
            child: Text(
              '$displayValue',
              style: const TextStyle(fontSize: 24),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                TextButton(
                  child: const Text('7'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.seven),
                ),
                TextButton(
                  child: const Text('8'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.eight),
                ),
                TextButton(
                  child: const Text('9'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.nine),
                ),
                TextButton(
                  child: const Text('/'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.division),
                ),
                TextButton(
                  child: const Text('4'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.four),
                ),
                TextButton(
                  child: const Text('5'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.five),
                ),
                TextButton(
                  child: const Text('6'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.six),
                ),
                TextButton(
                  child: const Text('*'),
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
                  child: const Text('2'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.two),
                ),
                TextButton(
                  child: const Text('3'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.three),
                ),
                TextButton(
                  child: const Text('+'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.addition),
                ),
                TextButton(
                  child: const Text('0'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.seven),
                ),
                TextButton(
                  child: const Text('.'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.decimalPoint),
                ),
                TextButton(
                  child: const Text('='),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.result),
                ),
                TextButton(
                  child: const Text('-'),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.subtraction),
                ),
                TextButton(
                  child: const Text('AC'),
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
