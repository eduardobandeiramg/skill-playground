import 'package:skill_playground/apresentacao/screens/custom_painter_screen.dart';
import 'package:skill_playground/apresentacao/screens/home_page.dart';
import 'package:skill_playground/apresentacao/screens/navigator_2_route_delegate.dart';

// enum para pré-listar todas as telas do app e definir o tipo do botão na construção do seu objeto
enum TelaSelecionada {
  home,
  customPainterBasics,
  navigator,
  blocStateManagement,
  platformChannels,
  performanceAndRepaints,
  asyncIsolates,
  animationControllerLifeCycle,
  streamBuilderErrorHandling,
  customSlivers,
  dependencyInjection,
}

// Mapa com informações sobre o título do botão e a tela para o qual ele vai navegar
Map<TelaSelecionada, dynamic> infosBotao = {
  TelaSelecionada.home: {"titulo":"Skill PlayGround", "tela": HomePage()},
  TelaSelecionada.customPainterBasics: {"titulo": "CustomPainter Basics", "tela": CustomPainterScreen()},
  TelaSelecionada.navigator: {"titulo": "Navigator 2.0/Router Delegate", "tela": Navigator2RouteDelegate()},
  TelaSelecionada.blocStateManagement: {"titulo": "Bloc State Management", "tela": CustomPainterScreen()},
  TelaSelecionada.platformChannels: {"titulo": "Platform Channels", "tela": CustomPainterScreen()},
  TelaSelecionada.performanceAndRepaints: {"titulo": "Performance & Repaints", "tela": CustomPainterScreen()},
  TelaSelecionada.asyncIsolates: {"titulo": "Async Isolates", "tela": CustomPainterScreen()},
  TelaSelecionada.animationControllerLifeCycle: {
    "titulo": "AnimationController LifeCycle",
    "tela": CustomPainterScreen(),
  },
  TelaSelecionada.streamBuilderErrorHandling: {
    "titulo": "StreamBuilder Error Handling",
    "tela": CustomPainterScreen(),
  },
  TelaSelecionada.customSlivers: {"titulo": "Custom Slivers", "tela": CustomPainterScreen()},
  TelaSelecionada.dependencyInjection: {
    "titulo": "Dependency Injection (get_it)",
    "tela": CustomPainterScreen(),
  },
};
