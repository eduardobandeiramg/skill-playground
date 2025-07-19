import 'package:flutter/material.dart';
import 'package:skill_playground/dominio/method_channels/so_method_channel.dart';

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
        children: [Center(child: Text("Sistema Operacional:")), Center(child: Text(so!))],
      ),
    );
  }
}
