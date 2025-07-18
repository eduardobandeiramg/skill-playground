import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_playground/dominio/utils/primary_swatch.dart';
import 'apresentacao/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
}