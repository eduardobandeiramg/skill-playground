import 'package:flutter/material.dart';

class CustomPainterScreen extends StatelessWidget {
  const CustomPainterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Custom Painter", style: TextStyle(color: Colors.white)),
      ),
      body: SizedBox.expand(child: CustomPaint(painter: MyPainter())),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Pintando o céu
    final fundo = Paint()..color = Colors.lightBlueAccent;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), fundo);

    // Fazendo a árvore
    // Definindo o tronco da árvore
    final tronco =
        Paint()
          ..color = Colors.brown
          ..strokeWidth = 20
          ..style = PaintingStyle.stroke;
    // Desenhando a linha do tronco da esquerda:
    canvas.drawLine(
      Offset(((size.width) / 2) - (size.width * 0.02), size.height),
      Offset(((size.width) / 2) - (size.width * 0.02), size.height * 0.6),
      tronco,
    );
    // Desenhando a linha do tronco da direita:
    canvas.drawLine(
      Offset(((size.width / 2) + (size.width * 0.02)), size.height),
      Offset(((size.width / 2) + (size.width * 0.02)), size.height * 0.6),
      tronco,
    );

    // Fazendo as folhas:
    final folhas =
        Paint()
          ..color = Colors.green
          ..strokeWidth = 5
          ..style = PaintingStyle.fill;
    // Definindo o retangulo da forma oval:
    final rect = Rect.fromLTWH(
      (size.width / 2 - (size.width * 0.35)),
      size.height * 0.1,
      250,
      size.height * 0.5,
    );
    //canvas.drawArc(rect, 0, pi/2, true, folhas);
    canvas.drawOval(rect, folhas);

    // Fazendo o sol:
    final sol =
        Paint()
          ..color = Colors.yellow
          ..strokeWidth = 5
          ..style = PaintingStyle.stroke;
    canvas.drawCircle(Offset(size.width, 0), size.width*0.18, sol);
    // Fazendo os raios de sol
    canvas.drawLine(
      Offset(size.width * 0.75, size.height * 0.03),
      Offset(size.width * 0.6, size.height * 0.05),
      sol,
    );
    canvas.drawLine(
      Offset(size.width * 0.78, size.height * 0.06),
      Offset(size.width * 0.55, size.height * 0.14),
      sol,
    );
    canvas.drawLine(
      Offset(size.width * 0.85, size.height * 0.1),
      Offset(size.width * 0.7, size.height * 0.19),
      sol,
    );
    canvas.drawLine(
      Offset(size.width * 0.94, size.height * 0.13),
      Offset(size.width * 0.87, size.height * 0.19),
      sol,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
