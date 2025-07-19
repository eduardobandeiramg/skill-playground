import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';

class CardPerformanceScreen extends StatefulWidget {
  const CardPerformanceScreen({super.key});

  @override
  State<CardPerformanceScreen> createState() => _CardPerformanceScreenState();
}

class _CardPerformanceScreenState extends State<CardPerformanceScreen> {
  int valor = 10;

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
    double altura = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: altura * 0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFB9CFF3),
        ),
        child: Center(child: Text("$valor")),
      ),
    );
  }
}

int geraNumero() {
  return Random().nextInt(100000000);
}
