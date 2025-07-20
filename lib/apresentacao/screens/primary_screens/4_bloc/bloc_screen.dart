import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skill_playground/dominio/controllers/bloc_ssot.dart';
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
            child: BlocBuilder<CounterCubit, int>(
              buildWhen: (previous, current) => current % 2 == 0,
              builder: (context, count) {
                return Text('Contador: $count', style: TextStyle(fontSize: 40));
              },
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: Dimensoes.altura * 0.25),
              child: GestureDetector(
                onDoubleTap: () {
                  context.read<CounterCubit>().increment();
                },
                child: ElevatedButton(
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
