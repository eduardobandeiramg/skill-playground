import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skill_playground/dominio/state_managers/bloc/counter_cubit.dart';
import 'package:skill_playground/utils/dimensoes.dart';

class BlocScreen extends StatefulWidget {
  const BlocScreen({super.key});

  @override
  State<BlocScreen> createState() => _BlocScreenState();
}

class _BlocScreenState extends State<BlocScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Bloc State Management", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            // Observador do single source of truth que só 'builda' quando o contador é par
            child: BlocBuilder<CounterCubit, int>(
              buildWhen: (previous, current) => current % 2 == 0,
              builder: (context, count) {
                return Text(key: Key("texto_tela_bloc"), 'Contador: $count', style: TextStyle(fontSize: 40));
              },
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: Dimensoes.altura * 0.25),
              child: GestureDetector(
                onDoubleTap: () {
                  // A variavel que armazena o contador no single source of truth é incrementada
                  context.read<CounterCubit>().increment();
                },
                child: ElevatedButton(
                  key: Key("botao_tela_bloc"),
                  style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xFF2F6BD5))),
                  onPressed: () {},
                  child: Text("Duplo-clique para contar!", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
