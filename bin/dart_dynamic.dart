void main() {
  var meuNumero = 7.1;
  print(meuNumero.runtimeType);
  // meuNumero = "test"; // Not possible
  dynamic meuNumero2 = 7.1;
  print(meuNumero2.runtimeType);
  meuNumero2 = "test";
  print(meuNumero2.runtimeType);

  Viagem viagemHoje = Viagem();
  print(Viagem.codigoTrabalho);
  print(viagemHoje.dinheiro);
}

class Viagem {
  static String codigoTrabalho = "TEST";
  double dinheiro = 0;

}