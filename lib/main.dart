import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:skill_playground/dominio/controllers/bloc_ssot.dart';
import 'package:skill_playground/dominio/controllers/navigation_state_management.dart';
import 'package:skill_playground/dominio/router_delegate/router_delegate.dart';

void main() {
  Get.put(NavigationController());
  runApp(BlocProvider<CounterCubit>(create: (_) => CounterCubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  final MyRouterDelegate _routerDelegate = MyRouterDelegate();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
      /*      home: Router(
        routerDelegate: _routerDelegate,
        routeInformationParser: _routeInformationParser,
      ),*/
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

/*
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Skill Playground',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(47, 107, 213, 1),
        primarySwatch: Colors.red//corDoApp,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}*/
