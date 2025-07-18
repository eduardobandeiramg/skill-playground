import 'package:flutter/material.dart';
import 'package:skill_playground/apresentacao/cards/card_home_page.dart';
import 'package:skill_playground/dominio/utils/indice_botoes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skill PlayGround", style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView(
        children: [
          CardHomePage(telaANavegar: Botao.customPainterBasics),
          CardHomePage(telaANavegar: Botao.navigator),
          CardHomePage(telaANavegar: Botao.blocStateManagement),
          CardHomePage(telaANavegar: Botao.platformChannels),
          CardHomePage(telaANavegar: Botao.performanceAndRepaints),
          CardHomePage(telaANavegar: Botao.asyncIsolates),
          CardHomePage(telaANavegar: Botao.animationControllerLifeCycle),
          CardHomePage(telaANavegar: Botao.streamBuilderErrorHandling),
          CardHomePage(telaANavegar: Botao.customSlivers),
          CardHomePage(telaANavegar: Botao.dependencyInjection),
        ],
      ),
    );
  }
}
