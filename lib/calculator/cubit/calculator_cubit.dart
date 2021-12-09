import 'package:bloc/bloc.dart';
import 'package:calculator/calculator/calculator.dart';

class CalculatorCubit extends Cubit<double> {
  CalculatorCubit(this.calculator) : super(0);

  final Calculator calculator;

  void type(Input input) {
    calculator.type(input);
    emit(calculator.display);
  }
}
