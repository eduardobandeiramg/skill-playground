import 'package:flutter_test/flutter_test.dart';
import 'package:skill_playground/dados/Streams/simulador_stream.dart';
import 'package:skill_playground/dominio/controllers/fibonacci_calculator.dart';

void main(){

  // testando se o calculo de determinada posicao da sequencia de fibonacci está correto
  test("testa calculo fibonacci", () async {
    var valorRetornado = await FibonacciCalculator().calcularFibonacci(15);
    expect(valorRetornado, 610);
  });

  // testando se os valores esperados do Stream estão sendo transmitidos corretamente
  test("verifica stream de lista de compras", () async {
    var stream = SimuladorStream().listaComprasStream();
    List<String> listaRetornada = [];
    stream.listen(
          (valor) {
        listaRetornada.add(valor);
      },
      onDone: () {
        expect(listaRetornada, ["arroz", "feijao", "batata", "banana", "laranja", "leite"]);
      },
    );
  });
}