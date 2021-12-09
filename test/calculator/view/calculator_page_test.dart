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

    testWidgets(
      'perform key 0 on tapping button 0',
      (tester) async {
        when(() => calculatorCubit.state).thenReturn(0);
        when(() => calculatorCubit.type(Input.zero)).thenReturn(null);

        await tester.pumpApp(
          BlocProvider.value(
            value: calculatorCubit,
            child: const CalculatorView(),
          ),
        );

        await tester.tap(find.byKey(const Key('key_zero')));
        verify(() => calculatorCubit.type(Input.zero)).called(1);
      },
    );

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

    testWidgets('perform key 2 on tapping button 2', (tester) async {
      when(() => calculatorCubit.state).thenReturn(0);
      when(() => calculatorCubit.type(Input.two)).thenReturn(null);

      await tester.pumpApp(
        BlocProvider.value(
          value: calculatorCubit,
          child: const CalculatorView(),
        ),
      );

      await tester.tap(find.byKey(const Key('key_two')));
      verify(() => calculatorCubit.type(Input.two)).called(1);
    });

    testWidgets('perform key 3 on tapping button 3', (tester) async {
      when(() => calculatorCubit.state).thenReturn(0);
      when(() => calculatorCubit.type(Input.three)).thenReturn(null);

      await tester.pumpApp(
        BlocProvider.value(
          value: calculatorCubit,
          child: const CalculatorView(),
        ),
      );

      await tester.tap(find.byKey(const Key('key_three')));
      verify(() => calculatorCubit.type(Input.three)).called(1);
    });

    testWidgets('perform key 4 on tapping button 4', (tester) async {
      when(() => calculatorCubit.state).thenReturn(0);
      when(() => calculatorCubit.type(Input.four)).thenReturn(null);

      await tester.pumpApp(
        BlocProvider.value(
          value: calculatorCubit,
          child: const CalculatorView(),
        ),
      );

      await tester.tap(find.byKey(const Key('key_four')));
      verify(() => calculatorCubit.type(Input.four)).called(1);
    });

    testWidgets('perform key 5 on tapping button 5', (tester) async {
      when(() => calculatorCubit.state).thenReturn(0);
      when(() => calculatorCubit.type(Input.five)).thenReturn(null);

      await tester.pumpApp(
        BlocProvider.value(
          value: calculatorCubit,
          child: const CalculatorView(),
        ),
      );

      await tester.tap(find.byKey(const Key('key_five')));
      verify(() => calculatorCubit.type(Input.five)).called(1);
    });

    testWidgets('perform key 6 on tapping button 6', (tester) async {
      when(() => calculatorCubit.state).thenReturn(0);
      when(() => calculatorCubit.type(Input.six)).thenReturn(null);

      await tester.pumpApp(
        BlocProvider.value(
          value: calculatorCubit,
          child: const CalculatorView(),
        ),
      );

      await tester.tap(find.byKey(const Key('key_six')));
      verify(() => calculatorCubit.type(Input.six)).called(1);
    });

    testWidgets('perform key 7 on tapping button 7', (tester) async {
      when(() => calculatorCubit.state).thenReturn(0);
      when(() => calculatorCubit.type(Input.seven)).thenReturn(null);

      await tester.pumpApp(
        BlocProvider.value(
          value: calculatorCubit,
          child: const CalculatorView(),
        ),
      );

      await tester.tap(find.byKey(const Key('key_seven')));
      verify(() => calculatorCubit.type(Input.seven)).called(1);
    });

    testWidgets('perform key 8 on tapping button 8', (tester) async {
      when(() => calculatorCubit.state).thenReturn(0);
      when(() => calculatorCubit.type(Input.eight)).thenReturn(null);

      await tester.pumpApp(
        BlocProvider.value(
          value: calculatorCubit,
          child: const CalculatorView(),
        ),
      );

      await tester.tap(find.byKey(const Key('key_eight')));
      verify(() => calculatorCubit.type(Input.eight)).called(1);
    });

    testWidgets('perform key 9 on tapping button 9', (tester) async {
      when(() => calculatorCubit.state).thenReturn(0);
      when(() => calculatorCubit.type(Input.nine)).thenReturn(null);

      await tester.pumpApp(
        BlocProvider.value(
          value: calculatorCubit,
          child: const CalculatorView(),
        ),
      );

      await tester.tap(find.byKey(const Key('key_nine')));
      verify(() => calculatorCubit.type(Input.nine)).called(1);
    });

    testWidgets('perform key + on tapping button +', (tester) async {
      when(() => calculatorCubit.state).thenReturn(0);
      when(() => calculatorCubit.type(Input.addition)).thenReturn(null);

      await tester.pumpApp(
        BlocProvider.value(
          value: calculatorCubit,
          child: const CalculatorView(),
        ),
      );

      await tester.tap(find.byKey(const Key('key_addition')));
      verify(() => calculatorCubit.type(Input.addition)).called(1);
    });

    testWidgets(
      'perform key - on tapping button -',
      (tester) async {
        when(() => calculatorCubit.state).thenReturn(0);
        when(() => calculatorCubit.type(Input.subtraction)).thenReturn(null);

        await tester.pumpApp(
          BlocProvider.value(
            value: calculatorCubit,
            child: const CalculatorView(),
          ),
        );

        await tester.tap(find.byKey(const Key('key_subtraction')));
        verify(() => calculatorCubit.type(Input.subtraction)).called(1);
      },
    );

    testWidgets('perform key * on tapping button *', (tester) async {
      when(() => calculatorCubit.state).thenReturn(0);
      when(() => calculatorCubit.type(Input.multiplication)).thenReturn(null);

      await tester.pumpApp(
        BlocProvider.value(
          value: calculatorCubit,
          child: const CalculatorView(),
        ),
      );

      await tester.tap(find.byKey(const Key('key_multiplication')));
      verify(() => calculatorCubit.type(Input.multiplication)).called(1);
    });

    testWidgets('perform key / on tapping button /', (tester) async {
      when(() => calculatorCubit.state).thenReturn(0);
      when(() => calculatorCubit.type(Input.division)).thenReturn(null);

      await tester.pumpApp(
        BlocProvider.value(
          value: calculatorCubit,
          child: const CalculatorView(),
        ),
      );

      await tester.tap(find.byKey(const Key('key_division')));
      verify(() => calculatorCubit.type(Input.division)).called(1);
    });

    testWidgets(
      'perform key . on tapping button .',
      (tester) async {
        when(() => calculatorCubit.state).thenReturn(0);
        when(() => calculatorCubit.type(Input.decimalPoint)).thenReturn(null);

        await tester.pumpApp(
          BlocProvider.value(
            value: calculatorCubit,
            child: const CalculatorView(),
          ),
        );

        await tester.tap(find.byKey(const Key('key_decimalPoint')));
        verify(() => calculatorCubit.type(Input.decimalPoint)).called(1);
      },
    );

    testWidgets(
      'perform key AC on tapping button AC',
      (tester) async {
        when(() => calculatorCubit.state).thenReturn(0);
        when(() => calculatorCubit.type(Input.allClear)).thenReturn(null);

        await tester.pumpApp(
          BlocProvider.value(
            value: calculatorCubit,
            child: const CalculatorView(),
          ),
        );

        await tester.tap(find.byKey(const Key('key_allClear')));
        verify(() => calculatorCubit.type(Input.allClear)).called(1);
      },
    );

    testWidgets(
      'perform key = on tapping button =',
      (tester) async {
        when(() => calculatorCubit.state).thenReturn(0);
        when(() => calculatorCubit.type(Input.result)).thenReturn(null);

        await tester.pumpApp(
          BlocProvider.value(
            value: calculatorCubit,
            child: const CalculatorView(),
          ),
        );

        await tester.tap(find.byKey(const Key('key_result')));
        verify(() => calculatorCubit.type(Input.result)).called(1);
      },
    );
  });
}
