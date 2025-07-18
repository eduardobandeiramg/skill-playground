// enum para pré-listar todas as telas do app e definir o tipo do botão na construção do seu objeto
import 'package:skill_playground/apresentacao/screens/custom_painter_screen.dart';

enum Botao {
  customPainterBasics,
  navigator,
  blocStateManagement,
  platformChannels,
  performanceAndRepaints,
  asyncIsolates,
  animationControllerLifeCycle,
  streamBuilderErrorHandling,
  customSlivers,
  dependencyInjection
}

// Mapa com informações sobre o título do botão e a tela para o qual ele vai navegar
Map<Botao, dynamic> infosBotao = {
  Botao.customPainterBasics: {"titulo": "CustomPainter Basics", "tela": CustomPainterScreen()},
  Botao.navigator : {"titulo": "Navigator 2.0/Router Delegate", "tela": CustomPainterScreen()},
  Botao.blocStateManagement : {"titulo": "Bloc State Management", "tela": CustomPainterScreen()},
  Botao.platformChannels : {"titulo": "Platform Channels", "tela": CustomPainterScreen()},
  Botao.performanceAndRepaints : {"titulo": "Performance & Repaints", "tela": CustomPainterScreen()},
  Botao.asyncIsolates : {"titulo": "Async Isolates", "tela": CustomPainterScreen()},
  Botao.animationControllerLifeCycle : {"titulo": "AnimationController LifeCycle", "tela": CustomPainterScreen()},
  Botao.streamBuilderErrorHandling : {"titulo": "StreamBuilder Error Handling", "tela": CustomPainterScreen()},
  Botao.customSlivers : {"titulo": "Custom Slivers", "tela": CustomPainterScreen()},
  Botao.dependencyInjection : {"titulo": "Dependency Injection (get_it)", "tela": CustomPainterScreen()},

};