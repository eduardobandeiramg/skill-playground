import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_playground/apresentacao/screens/async_isolates.dart';
import 'package:skill_playground/apresentacao/screens/bloc_screen.dart';
import 'package:skill_playground/apresentacao/screens/custom_painter_screen.dart';
import 'package:skill_playground/apresentacao/screens/navigator_2_route_screen.dart';
import 'package:skill_playground/apresentacao/screens/performance_and_repaints_screen.dart';
import 'package:skill_playground/apresentacao/screens/platform_channels_screen.dart';
import 'package:skill_playground/dominio/controllers/navigation_controller.dart';
import 'package:skill_playground/dominio/utils/indice_botoes.dart';

import '../../apresentacao/screens/home_page_screen.dart';

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
