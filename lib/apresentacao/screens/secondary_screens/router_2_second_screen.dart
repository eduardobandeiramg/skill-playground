import 'package:flutter/material.dart';
import 'package:skill_playground/utils/dimensoes.dart';

class Router2SecondScreen extends StatelessWidget {
  const Router2SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Demonstração de Navegação com Router 2.0",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Icon(
                Icons.thumb_up_alt_rounded,
                size: Dimensoes.altura * 0.25,
                color: Color(0xFF8FB2EC),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
