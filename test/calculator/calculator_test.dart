import 'package:calculator/calculator/calculator.dart';

import 'package:test/test.dart';

void main() {
  group('Calculator', () {
    late Calculator calculator;
    setUp(() {
      calculator = Calculator();
    });
    test('on type 1 calculator display should be 1', () {
      calculator.type(Input.one);
      expect(calculator.display, equals(1));
    });

    test('on type 11 calculator display should be 11', () {
      calculator
        ..type(Input.one)
        ..type(Input.one);

      expect(calculator.display, equals(11));
    });
    test('on type 9876543210 calculator display should be 9876543210', () {
      calculator
        ..type(Input.nine)
        ..type(Input.eight)
        ..type(Input.seven)
        ..type(Input.six)
        ..type(Input.five)
        ..type(Input.four)
        ..type(Input.three)
        ..type(Input.two)
        ..type(Input.one)
        ..type(Input.zero);

      expect(calculator.display, equals(9876543210));
    });

    test('on type 1+ calculator display should be 1', () {
      calculator
        ..type(Input.one)
        ..type(Input.addition);

      expect(calculator.display, equals(1));
    });

    test('on type 1+2 calculator display should be 2', () {
      calculator
        ..type(Input.one)
        ..type(Input.addition)
        ..type(Input.two);

      expect(calculator.display, equals(2));
    });

    test('on type 1+2= calculator display should be 3', () {
      calculator.type(Input.one);
      expect(calculator.display, equals(1));
      calculator.type(Input.addition);
      expect(calculator.display, equals(1));
      calculator.type(Input.two);
      expect(calculator.display, equals(2));
      calculator.type(Input.result);
      expect(calculator.display, equals(3));
    });

    test('on type 5-3= calculator display should be 2', () {
      calculator
        ..type(Input.five)
        ..type(Input.subtraction)
        ..type(Input.three)
        ..type(Input.result);
      expect(calculator.display, equals(2));
    });

    test('on type 2*4= calculator display should be 8', () {
      calculator
        ..type(Input.two)
        ..type(Input.multiplication)
        ..type(Input.four)
        ..type(Input.result);
      expect(calculator.display, equals(8));
    });

    test('on type 6/3= calculator display should be 2', () {
      calculator
        ..type(Input.six)
        ..type(Input.division)
        ..type(Input.three)
        ..type(Input.result);
      expect(calculator.display, equals(2));
    });

    test('on type 88/22= calculator display should be 4', () {
      calculator
        ..type(Input.eight)
        ..type(Input.eight)
        ..type(Input.division)
        ..type(Input.two)
        ..type(Input.two)
        ..type(Input.result);
      expect(calculator.display, equals(4));
    });

    test('on type 1 and then AC, calculator display should be 0', () {
      calculator
        ..type(Input.one)
        ..type(Input.allClear);
      expect(calculator.display, equals(0));
    });

    test('on type 1.5 and then AC, calculator display should be 1.5', () {
      calculator
        ..type(Input.one)
        ..type(Input.decimalPoint)
        ..type(Input.five);
      expect(calculator.display, equals(1.5));
    });

    test('on type 1.5*3= and then AC, calculator display should be 4.5', () {
      calculator
        ..type(Input.one)
        ..type(Input.decimalPoint)
        ..type(Input.five)
        ..type(Input.multiplication)
        ..type(Input.three)
        ..type(Input.result);
      expect(calculator.display, equals(4.5));
    });
  });
}
