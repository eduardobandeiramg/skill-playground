import 'package:flutter/material.dart';
import 'package:skill_playground/dominio/controllers/get_operational_system_controller.dart';

class PlatformChannelsScreen extends StatefulWidget {
  const PlatformChannelsScreen({super.key});

  @override
  State<PlatformChannelsScreen> createState() => _PlatformChannelsScreenState();
}

class _PlatformChannelsScreenState extends State<PlatformChannelsScreen> {
  String? so = "Sistema Operacional não detectado";

  Future<String?> buscaSO() async {
    var canal = SOMethodChannel();
    return await canal.retornaSO();
  }

  @override
  void initState() {
    super.initState();
    // ao iniciar o estado da tela, cria o objeto e chama a função que implementa methodchannel
    buscaSO().then((retorno) {
      setState(() {
        so = retorno;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Platform Channels", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(child: Text("Sistema Operacional:")),
          Center(child: Text(so!, key: Key("sistema_operacional"))),
        ],
      ),
    );
  }
}
