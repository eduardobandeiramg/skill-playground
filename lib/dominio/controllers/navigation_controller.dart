import 'package:get/get.dart';
import 'package:skill_playground/utils/indice_botoes.dart';

class NavigationController extends GetxController{

  final telaAtual = TelaSelecionada.home.obs;

  void navegarPara(TelaSelecionada tela){
    telaAtual.value = tela;
  }

  void voltarPara(TelaSelecionada tela){
    telaAtual.value = tela;
  }

  void voltarParaHome() => telaAtual.value = TelaSelecionada.home;

  final teste = "".obs;

  //Obx(()=>)
}