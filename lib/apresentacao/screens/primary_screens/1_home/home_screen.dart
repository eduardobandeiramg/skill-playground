import 'package:flutter/material.dart';
import 'package:skill_playground/apresentacao/cards/card_home_page.dart';
import 'package:skill_playground/apresentacao/navigation/indice_botoes.dart';

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
          CardHomePage(telaANavegar: TelaSelecionada.customPainterBasics, key: Key("cartao_tela_1"),),
          CardHomePage(telaANavegar: TelaSelecionada.navigator, key: Key("cartao_tela_2")),
          CardHomePage(telaANavegar: TelaSelecionada.blocStateManagement, key: Key("cartao_tela_3")),
          CardHomePage(telaANavegar: TelaSelecionada.platformChannels, key: Key("cartao_tela_4")),
          CardHomePage(telaANavegar: TelaSelecionada.performanceAndRepaints, key: Key("cartao_tela_5")),
          CardHomePage(telaANavegar: TelaSelecionada.asyncIsolates, key: Key("cartao_tela_6")),
          CardHomePage(telaANavegar: TelaSelecionada.animationControllerLifeCycle, key: Key("cartao_tela_7")),
          CardHomePage(telaANavegar: TelaSelecionada.streamBuilderErrorHandling, key: Key("cartao_tela_8")),
          CardHomePage(telaANavegar: TelaSelecionada.customSlivers, key: Key("cartao_tela_9")),
          CardHomePage(telaANavegar: TelaSelecionada.dependencyInjection, key: Key("cartao_tela_10")),
        ],
      ),
    );
  }
}
