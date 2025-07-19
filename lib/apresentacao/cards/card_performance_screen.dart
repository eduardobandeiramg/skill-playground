import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:skill_playground/dominio/utils/dimensoes.dart';

class CardPerformanceScreen extends StatefulWidget {
  const CardPerformanceScreen({super.key});

  @override
  State<CardPerformanceScreen> createState() => _CardPerformanceScreenState();
}

class _CardPerformanceScreenState extends State<CardPerformanceScreen> {
  int? valor;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        valor = geraNumero();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: Dimensoes.altura * 0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFB9CFF3),
        ),
        child: Center(child: valor == null ? Text("gerando números aleatórios") : Text("$valor")),
      ),
    );
  }
}

int geraNumero() {
  return Random().nextInt(100000000);
}
