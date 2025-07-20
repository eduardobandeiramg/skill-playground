import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_playground/dominio/controllers/fibonacci_value_controller.dart';
import 'package:skill_playground/utils/dimensoes.dart';

class AsyncIsolates extends StatefulWidget {
  const AsyncIsolates({super.key});

  @override
  State<AsyncIsolates> createState() => _AsyncIsolatesState();
}

class _AsyncIsolatesState extends State<AsyncIsolates> {
  late final CalculoFibonacciStateManagement calculoFibonacciStateManagement;

  @override
  void initState() {
    super.initState();
    calculoFibonacciStateManagement = CalculoFibonacciStateManagement();
    calculoFibonacciStateManagement.calculaFibonacci(45);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Async Isolates", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(Dimensoes.altura * 0.1),
            child: Text("Resultado do cálculo pesado:"),
          ),
          Obx(() {
            return calculoFibonacciStateManagement.resultado == 0
                ? Text("Ainda calculando...")
                : Text("Cálculo finalizado. Valor: ${calculoFibonacciStateManagement.resultado}");
          }),
        ],
      ),
    );
  }
}
