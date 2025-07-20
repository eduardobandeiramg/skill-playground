import 'package:flutter/material.dart';
import 'package:skill_playground/dados/Streams/simulador_stream.dart';
import 'package:skill_playground/utils/dimensoes.dart';

class StreamBuilderErrorHandling extends StatefulWidget {
  const StreamBuilderErrorHandling({super.key});

  @override
  State<StreamBuilderErrorHandling> createState() => _StreamBuilderErrorHandlingState();
}

class _StreamBuilderErrorHandlingState extends State<StreamBuilderErrorHandling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: FittedBox(
          child: Text("StreamBuilder Error Handling", style: TextStyle(color: Colors.white)),
        ),
      ),
      body: StreamBuilder(
        stream: SimuladorStream().listaComprasStream(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(color: Colors.orange));
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline_rounded,
                    color: Colors.red,
                    size: Dimensoes.altura * 0.1,
                  ),
                  Text("Erro!", style: TextStyle(fontSize: Dimensoes.altura * 0.1)),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Fim da Lista!",
                      style: TextStyle(fontSize: Dimensoes.altura * 0.1),
                    ),
                  ),
                ],
              ),
            );
          } else if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.error_outline_rounded,
                      color: Colors.red,
                      size: Dimensoes.altura * 0.1,
                    ),
                    Text("Conteúdo vazio!", style: TextStyle(fontSize: Dimensoes.altura * 0.1)),
                  ],
                ),
              );
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_cart, color: Colors.red, size: Dimensoes.altura * 0.1),
                    Text(
                      "Comprar ${snapshot.data}",
                      style: TextStyle(fontSize: Dimensoes.altura * 0.04),
                    ),
                  ],
                ),
              );
            }
          } else {
            return Center(
              child: Column(
                children: [
                  Icon(
                    Icons.error_outline_rounded,
                    color: Colors.red,
                    size: Dimensoes.altura * 0.1,
                  ),
                  Text("Erro não identificado", style: TextStyle(fontSize: Dimensoes.altura * 0.1)),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
