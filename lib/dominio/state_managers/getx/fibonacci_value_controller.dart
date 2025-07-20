import 'package:get/get.dart';
import 'package:skill_playground/dominio/controllers/fibonacci_calculator.dart';

class FibonacciValueStateManagement extends GetxController {
  var resultado = 0.obs;

  void calculaFibonacci(int x) async {
    FibonacciCalculator fibonacciCalculator = FibonacciCalculator();
    resultado.value = await fibonacciCalculator.calcularFibonacci(x);
  }
}
