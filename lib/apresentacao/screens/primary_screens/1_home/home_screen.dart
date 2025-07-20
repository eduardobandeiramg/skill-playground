import 'package:flutter/material.dart';
import 'package:skill_playground/apresentacao/cards/card_home_page.dart';
import 'package:skill_playground/utils/indice_botoes.dart';

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
          CardHomePage(telaANavegar: TelaSelecionada.customPainterBasics),
          CardHomePage(telaANavegar: TelaSelecionada.navigator),
          CardHomePage(telaANavegar: TelaSelecionada.blocStateManagement),
          CardHomePage(telaANavegar: TelaSelecionada.platformChannels),
          CardHomePage(telaANavegar: TelaSelecionada.performanceAndRepaints),
          CardHomePage(telaANavegar: TelaSelecionada.asyncIsolates),
          CardHomePage(telaANavegar: TelaSelecionada.animationControllerLifeCycle),
          CardHomePage(telaANavegar: TelaSelecionada.streamBuilderErrorHandling),
          CardHomePage(telaANavegar: TelaSelecionada.customSlivers),
          CardHomePage(telaANavegar: TelaSelecionada.dependencyInjection),
        ],
      ),
    );
  }
}
