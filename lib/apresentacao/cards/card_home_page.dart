import 'package:flutter/material.dart';
import 'package:skill_playground/apresentacao/screens/primary_screens/2_custom_painter/custom_painter_screen.dart';
import 'package:skill_playground/utils/dimensoes.dart';
import '../../utils/indice_botoes.dart';
import 'package:get/get.dart';
import 'package:skill_playground/dominio/controllers/navigation_controller.dart';

class CardHomePage extends StatelessWidget {
  final TelaSelecionada telaANavegar;

  const CardHomePage({required this.telaANavegar, super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NavigationController>();
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          controller.navegarPara(telaANavegar);
          //controller.navegarPara(infosBotao[telaANavegar]["tela"]);
        },
        /*        onTap: () async {
          return Get.to(CustomPainterScreen());
        },*/
        child: Container(
          height: Dimensoes.altura * 0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xFFB9CFF3),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    infosBotao[telaANavegar]["titulo"],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(flex: 1, child: Icon(Icons.arrow_circle_right_rounded)),
            ],
          ),
        ),
      ),
    );
  }
}
