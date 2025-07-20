import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:skill_playground/dominio/controllers/bloc_ssot.dart';
import 'package:skill_playground/apresentacao/navigation/navigation_controller.dart';
import 'package:skill_playground/dominio/router_delegate/router_delegate.dart';
import 'package:skill_playground/utils/dimensoes.dart';
import 'locator.dart';

void main() {
  Get.put(NavigationController());
  debugRepaintRainbowEnabled = false;
  setupLocator();
  runApp(BlocProvider<CounterCubit>(create: (_) => CounterCubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  final MyRouterDelegate _routerDelegate = MyRouterDelegate();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Dimensoes.altura = MediaQuery.of(context).size.height;
    Dimensoes.largura = MediaQuery.of(context).size.width;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _routerDelegate,
      routeInformationParser: _MyRouteInformationParser(),
      title: 'Skill Playground',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(47, 107, 213, 1),
        primarySwatch: Colors.red, //corDoApp,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}

class _MyRouteInformationParser extends RouteInformationParser<int> {
  @override
  Future<int> parseRouteInformation(RouteInformation routeInformation) async {
    return 0;
  }

  @override
  RouteInformation? restoreRouteInformation(int configuration) {
    return RouteInformation(location: '/');
  }
}
