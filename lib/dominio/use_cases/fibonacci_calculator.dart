import 'package:flutter/foundation.dart';

class FibonacciCalculator{

  // função que implementa o "compute", para cálculos complexos com isolates:
  Future<int> calcularFibonacci(int n) async {
    final valorCalculado = await compute<int, int>(_fibonacci, n);
    return valorCalculado;
  }

  // função que define o cálculo de fibonacci em si:
  static int _fibonacci(int n) {
    if (n <= 1) return n;
    return _fibonacci(n - 1) + _fibonacci(n - 2);
  }
}