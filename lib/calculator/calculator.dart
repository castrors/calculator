enum Input {
  zero,
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  addition,
  subtraction,
  multiplication,
  division,
  result,
  allClear,
  decimalPoint
}

class Calculator {
  String _result = '0';

  double? _firstValueOfOperation;
  Input? _currentOperation;
  bool shouldResetResult = false;

  double get display => double.parse(_result);

  void type(Input input) {
    if (_firstValueOfOperation != null &&
        _isANumber(input) &&
        shouldResetResult) {
      shouldResetResult = false;
      _result = '';
    }
    switch (input) {
      case Input.zero:
      case Input.one:
      case Input.two:
      case Input.three:
      case Input.four:
      case Input.five:
      case Input.six:
      case Input.seven:
      case Input.eight:
      case Input.nine:
        _result += '${input.index}';
        break;
      case Input.addition:
        _firstValueOfOperation = double.parse(_result);
        _currentOperation = Input.addition;
        shouldResetResult = true;
        break;
      case Input.subtraction:
        _firstValueOfOperation = double.parse(_result);
        _currentOperation = Input.subtraction;
        shouldResetResult = true;
        break;
      case Input.multiplication:
        _firstValueOfOperation = double.parse(_result);
        _currentOperation = Input.multiplication;
        shouldResetResult = true;
        break;
      case Input.division:
        _firstValueOfOperation = double.parse(_result);
        _currentOperation = Input.division;
        shouldResetResult = true;
        break;
      case Input.result:
        if (_currentOperation != null && _firstValueOfOperation != null) {
          final number1 = _firstValueOfOperation!;
          final number2 = double.parse(_result);
          final result = evaluate(_currentOperation!, number1, number2);
          _result = result.toString();
        }
        break;
      case Input.allClear:
        _result = '0';
        break;
      case Input.decimalPoint:
        _result += '.';
        break;
      // ignore: no_default_cases
      default:
    }
  }

  double evaluate(Input operation, double number1, double number2) {
    switch (operation) {
      case Input.addition:
        return number1 + number2;
      case Input.subtraction:
        return number1 - number2;
      case Input.multiplication:
        return number1 * number2;
      case Input.division:
        return number1 / number2;
      // ignore: no_default_cases
      default:
        return number1 + number2;
    }
  }

  bool _isANumber(Input input) {
    return input.index <= 9;
  }
}
