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
          Row(
            children: [
              Center(
                child: Text(
                  '$displayValue',
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: TextButton(
                  child: const Text(
                    'AC',
                    key: Key('key_allClear'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.allClear),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(
                    '/',
                    key: Key('key_division'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.division),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  child: const Text(
                    '7',
                    key: Key('key_seven'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.seven),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(
                    '8',
                    key: Key('key_eight'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.eight),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(
                    '9',
                    key: Key('key_nine'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.nine),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(
                    '*',
                    key: Key('key_multiplication'),
                  ),
                  onPressed: () => context
                      .read<CalculatorCubit>()
                      .type(Input.multiplication),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  child: const Text(
                    '4',
                    key: Key('key_four'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.four),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(
                    '5',
                    key: Key('key_five'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.five),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(
                    '6',
                    key: Key('key_six'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.six),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(
                    '-',
                    key: Key('key_subtraction'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.subtraction),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  child: const Text(
                    '1',
                    key: Key('key_one'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.one),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(
                    '2',
                    key: Key('key_two'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.two),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(
                    '3',
                    key: Key('key_three'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.three),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(
                    '+',
                    key: Key('key_addition'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.addition),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: TextButton(
                  child: const Text(
                    '0',
                    key: Key('key_zero'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.zero),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(
                    '.',
                    key: Key('key_decimalPoint'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.decimalPoint),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(
                    '=',
                    key: Key('key_result'),
                  ),
                  onPressed: () =>
                      context.read<CalculatorCubit>().type(Input.result),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
