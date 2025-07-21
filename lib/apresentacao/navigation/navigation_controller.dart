import 'package:get/get.dart';
import 'package:skill_playground/apresentacao/navigation/indice_botoes.dart';

class NavigationController extends GetxController{

  // variavel de controle da tela a ser exibida. Inicia com homepage
  final telaAtual = TelaSelecionada.home.obs;

  // metodo para navegar de acordo com enum da tela desejada
  void navegarPara(TelaSelecionada tela){
    telaAtual.value = tela;
  }

  // metodo para navegar para uma tela específica quando pressionado o botão de retorno
  void voltarPara(TelaSelecionada tela){
    telaAtual.value = tela;
  }

  // metodo para navegar direto para home
  void voltarParaHome() => telaAtual.value = TelaSelecionada.home;
}