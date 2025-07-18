import 'package:flutter/material.dart';
import 'package:skill_playground/apresentacao/screens/custom_painter_screen.dart';
import '../../dominio/utils/indice_botoes.dart';
import 'package:get/get.dart';

class CardHomePage extends StatelessWidget {
  final Botao telaANavegar;

  const CardHomePage({required this.telaANavegar, super.key});

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () async {
          return Get.to(CustomPainterScreen());
        },
        child: Container(
          height: altura * 0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xFFB9CFF3),
          ),
          child: Row(
            children: [
              Expanded(flex: 3, child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(infosBotao[telaANavegar]["titulo"], style: TextStyle(fontWeight: FontWeight.bold),),
              )),
              Expanded(flex: 1, child: Icon(Icons.arrow_circle_right_rounded)),
            ],
          ),
        ),
      ),
    );
  }
}
