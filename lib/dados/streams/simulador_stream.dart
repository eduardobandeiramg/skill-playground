class SimuladorStream{

  Stream<String> listaComprasStream() async* {
    List listaCompras = ["arroz", "feijao", "batata", "banana", "laranja", "leite"];
    for(var item in listaCompras){
      await Future.delayed(Duration(seconds: 1));
      yield item;
    }
    throw Exception("erroStream");
  }

}