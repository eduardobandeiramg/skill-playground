import 'package:get/get.dart';
import 'package:skill_playground/dominio/use_cases/fibonacci_calculator.dart';

class CalculoFibonacciStateManagement extends GetxController {
  var resultado = 0.obs;

  void calculaFibonacci(int x) async {
    FibonacciCalculator fibonacciCalculator = FibonacciCalculator();
    resultado.value = await fibonacciCalculator.calcularFibonacci(x);
  }
}
