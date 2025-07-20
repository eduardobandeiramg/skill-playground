import 'package:flutter/material.dart';
import 'package:skill_playground/utils/dimensoes.dart';

class AnimationControllerScreen extends StatefulWidget {
  @override
  _AnimationControllerScreenState createState() => _AnimationControllerScreenState();
}

class _AnimationControllerScreenState extends State<AnimationControllerScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animacao;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 5));

    _animacao = Tween<double>(begin: 0, end: Dimensoes.largura).animate(_controller)..addListener(() {
      setState(() {});
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text("Animation Controller LifeCycle", style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Container(width: _animacao.value, height: _animacao.value, color: Color(0xFF2F6BD5)),
    );
  }
}
