import 'package:get_it/get_it.dart';
import 'package:skill_playground/apresentacao/cards/card_performance_screen.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<CardPerformanceScreen>(() => CardPerformanceScreen());
}