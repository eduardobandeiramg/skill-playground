// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:skill_playground/apresentacao/navigation/navigation_controller.dart';
import 'package:skill_playground/dominio/state_managers/bloc/counter_cubit.dart';
import 'package:skill_playground/main.dart';

void main() {
  // testando se tela do contador esta funcinando como esperado
  testWidgets("testando tela de contador condicional", (WidgetTester tester) async {
    Get.put(NavigationController());
    await tester.pumpWidget(
      BlocProvider<CounterCubit>(create: (_) => CounterCubit(), child: MyApp()),
    );
    await tester.pumpAndSettle();

    //procurando cartao da tela bloc_screen e navegando para ela
    final cardFinder = find.byKey(Key('cartao_tela_3'));
    await tester.tap(cardFinder);

    await tester.pumpAndSettle();

    // procurando widgets de texto e botao com base na key
    final procuraTexto = find.byKey(Key("texto_tela_bloc"));
    expect(procuraTexto, findsOneWidget);
    final Text widgetTexto = tester.widget(procuraTexto);
    final botao = find.byKey(Key("botao_tela_bloc"));

    // Primeiro duplo-clique
    await tester.tap(botao);
    await tester.pump(const Duration(milliseconds: 50));
    await tester.tap(botao);
    await tester.pumpAndSettle();
    expect(find.text("Contador: 0"), findsOneWidget);

    // Segundo duplo-clique
    await tester.tap(botao);
    await tester.pump(const Duration(milliseconds: 50));
    await tester.tap(botao);
    await tester.pumpAndSettle();
    expect(find.text("Contador: 2"), findsOneWidget);
  });

  // testando se o icone correto aparece quando o stream falha
  testWidgets("testa icone correto apos falha stream", (WidgetTester tester) async {
    tester.binding.window.physicalSizeTestValue = const Size(1080, 1920);
    tester.binding.window.devicePixelRatioTestValue = 1.0;

    addTearDown(() {
      tester.binding.window.clearPhysicalSizeTestValue();
      tester.binding.window.clearDevicePixelRatioTestValue();
    });

    Get.put(NavigationController());

    await tester.pumpWidget(
      BlocProvider<CounterCubit>(
        create: (_) => CounterCubit(),
        child: MyApp(),
      ),
    );

    await tester.pumpAndSettle();

    // navegando para a tela stream_builder_screen
    final cardFinder = find.byKey(Key('cartao_tela_8'));

    // Scrollando para achar o card correto
    await tester.scrollUntilVisible(
      cardFinder,
      300.0,
      scrollable: find.byType(Scrollable),
    );

    await tester.tap(cardFinder);

    await tester.pumpAndSettle();

    // aguardando o stream terminar e retornar erro
    await tester.pump(const Duration(seconds: 10));

    expect(find.byIcon(Icons.error_outline_rounded), findsOneWidget);
  });
}
