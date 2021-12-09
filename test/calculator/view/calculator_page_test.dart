import 'package:bloc_test/bloc_test.dart';
import 'package:calculator/calculator/calculator.dart';
import 'package:calculator/calculator/cubit/calculator_cubit.dart';
import 'package:calculator/calculator/view/calculator_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/pump_app.dart';

class MockCalculatorCubit extends MockCubit<double> implements CalculatorCubit {
}

void main() {
  group('CalculatorPage', () {
    testWidgets('renders CalculatorView', (tester) async {
      await tester.pumpApp(const CalculatorPage());
      expect(find.byType(CalculatorView), findsOneWidget);
    });
  });

  group('CalculatorView', () {
    late CalculatorCubit calculatorCubit;

    setUp(() {
      calculatorCubit = MockCalculatorCubit();
    });

    testWidgets('renders current display value', (tester) async {
      const state = 42.0;
      when(() => calculatorCubit.state).thenReturn(state);
      await tester.pumpApp(
        BlocProvider.value(
          value: calculatorCubit,
          child: const CalculatorView(),
        ),
      );

      expect(find.text('$state'), findsOneWidget);
    });

    testWidgets('perform key 1 on tapping button 1', (tester) async {
      when(() => calculatorCubit.state).thenReturn(0);
      when(() => calculatorCubit.type(Input.one)).thenReturn(null);

      await tester.pumpApp(
        BlocProvider.value(
          value: calculatorCubit,
          child: const CalculatorView(),
        ),
      );

      await tester.tap(find.byKey(const Key('key_one')));
      verify(() => calculatorCubit.type(Input.one)).called(1);
    });
  });
}
