import 'package:bloc_test/bloc_test.dart';
import 'package:calculator/calculator/calculator.dart';
import 'package:calculator/calculator/cubit/calculator_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CalculatorCubit', () {
    test('initial state is 0', () {
      expect(CalculatorCubit(Calculator()).state, equals(0));
    });

    blocTest<CalculatorCubit, double>(
      'emits [1] when typed 1',
      build: () => CalculatorCubit(Calculator()),
      act: (cubit) => cubit.type(Input.one),
      expect: () => [equals(1)],
    );

    blocTest<CalculatorCubit, double>(
      'emits [2.5] when typed 2.5',
      build: () => CalculatorCubit(Calculator()),
      act: (cubit) => cubit
        ..type(Input.two)
        ..type(Input.decimalPoint)
        ..type(Input.five),
      expect: () => [
        equals(2),
        equals(2.5),
      ],
    );
  });
}
