import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:skill_playground/apresentacao/navigation/navigation_controller.dart';
import 'package:skill_playground/dominio/state_managers/bloc/counter_cubit.dart';
import 'package:skill_playground/main.dart';

void main(){
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
      BlocProvider<CounterCubit>(create: (_) => CounterCubit(), child: MyApp()),
    );

    await tester.pumpAndSettle();

    // navegando para a tela stream_builder_screen
    final cardFinder = find.byKey(Key('cartao_tela_8'));

    // Scrollando para achar o card correto
    await tester.scrollUntilVisible(cardFinder, 1000.0, scrollable: find.byType(Scrollable));

    await tester.tap(cardFinder);

    await tester.pumpAndSettle();

    // aguardando o stream terminar e retornar erro
    await tester.pump(const Duration(seconds: 10));

    expect(find.byIcon(Icons.error_outline_rounded), findsOneWidget);
  });
}