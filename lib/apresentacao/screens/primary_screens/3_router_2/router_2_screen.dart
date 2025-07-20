import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:skill_playground/utils/indice_botoes.dart';
import '../../../../dominio/controllers/navigation_controller.dart';

class Navigator2RouteDelegate extends StatelessWidget {
  final controller = Get.find<NavigationController>();

  Navigator2RouteDelegate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text("Navigator 2.0 / Router Delegate", style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Aperte o botão para ver a demonstração de navegação entre duas telas com o Router 2.0!",
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          controller.navegarPara(TelaSelecionada.secondaryScreenFromNavigatorScreen);
        },
        child: Icon(Icons.navigate_next, color: Colors.white),
      ),
    );
  }
}
