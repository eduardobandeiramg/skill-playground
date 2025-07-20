import 'package:flutter/material.dart';
import 'package:skill_playground/apresentacao/cards/card_performance_screen.dart';
import 'package:skill_playground/utils/dimensoes.dart';
import 'package:skill_playground/locator.dart';

class PerformanceScreen extends StatelessWidget {
  final CardPerformanceScreen cartao;

  PerformanceScreen({super.key}) : cartao = getIt<CardPerformanceScreen>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Performance & Repaints", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text("Parte imutável:"),
            ),
          ),
          Container(height: Dimensoes.altura * 0.3, color: Color(0xFF8FB2EC), key: Key("container_tela_5"),),
          Expanded(
            child: ListView(
              children: [
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
                cartao,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
