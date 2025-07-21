import 'package:flutter/services.dart';

class SOMethodChannel{
  // criando method channel com android e iOS nativos
  final MethodChannel _channel = const MethodChannel("skill_playground/retorna_so");

  // chamando metodo definido nos codigos nativos
  Future<String?> retornaSO() async {
    return await _channel.invokeMethod<String>("retornaSO");
  }
}