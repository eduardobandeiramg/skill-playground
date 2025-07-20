import 'package:flutter/services.dart';

class SOMethodChannel{
  final MethodChannel _channel = const MethodChannel("skill_playground/retorna_so");

  Future<String?> retornaSO() async {
    return await _channel.invokeMethod<String>("retornaSO");
  }
}