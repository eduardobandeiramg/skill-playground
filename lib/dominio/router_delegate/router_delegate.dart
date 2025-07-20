import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_playground/apresentacao/screens/primary_screens/8_animation_controller/animation_controller_screen.dart';
import 'package:skill_playground/apresentacao/screens/primary_screens/7_isolate/isolate_screen.dart';
import 'package:skill_playground/apresentacao/screens/primary_screens/4_bloc/bloc_screen.dart';
import 'package:skill_playground/apresentacao/screens/primary_screens/2_custom_painter/custom_painter_screen.dart';
import 'package:skill_playground/apresentacao/screens/primary_screens/10_slivers/slivers_screen.dart';
import 'package:skill_playground/apresentacao/screens/primary_screens/3_router_2/router_2_screen.dart';
import 'package:skill_playground/apresentacao/screens/primary_screens/6_performance/performance_screen.dart';
import 'package:skill_playground/apresentacao/screens/primary_screens/5_platform_channels/platform_channels_screen.dart';
import 'package:skill_playground/apresentacao/screens/primary_screens/9_stream_builder/stream_builder_screen.dart';
import 'package:skill_playground/dominio/controllers/navigation_controller.dart';
import 'package:skill_playground/dominio/utils/indice_botoes.dart';
import '../../apresentacao/screens/primary_screens/1_home/home_screen.dart';

class MyRouterDelegate extends RouterDelegate<int>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<int> {
  final GlobalKey<NavigatorState> navigatorKey;

  final NavigationController pageController = Get.find();

  MyRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>() {
    pageController.telaAtual.listen((_) => notifyListeners());
  }

  @override
  Widget build(BuildContext context) {
    final tela = pageController.telaAtual.value;

    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(child: HomePage()),
        if (tela == TelaSelecionada.customPainterBasics) MaterialPage(child: CustomPainterScreen()),
        if (tela == TelaSelecionada.navigator) MaterialPage(child: Navigator2RouteDelegate()),
        if (tela == TelaSelecionada.blocStateManagement) MaterialPage(child: BlocScreen()),
        if (tela == TelaSelecionada.platformChannels) MaterialPage(child: PlatformChannelsScreen()),
        if (tela == TelaSelecionada.performanceAndRepaints)
          MaterialPage(child: PerformanceScreen()),
        if (tela == TelaSelecionada.asyncIsolates) MaterialPage(child: AsyncIsolates()),
        if (tela == TelaSelecionada.animationControllerLifeCycle)
          MaterialPage(child: AnimationControllerScreen()),
        if (tela == TelaSelecionada.streamBuilderErrorHandling)
          MaterialPage(child: StreamBuilderErrorHandling()),
        if (tela == TelaSelecionada.customSlivers) MaterialPage(child: CustomSlivers()),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) return false;
        pageController.voltarParaHome();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(int configuration) async {
    //vazio
  }
}
