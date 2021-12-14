import 'package:bloc/bloc.dart';
import 'package:calculator/calculator/calculator.dart';

class CalculatorCubit extends Cubit<double> {
  CalculatorCubit(this.calculator) : super(0);

  final Calculator calculator;

  Future<void> type(Input input) async {
    calculator.type(input);
    emit(calculator.display);
  }
}
