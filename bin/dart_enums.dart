void main() {
  escolherMeioTransporte(Transporte.bike);
  escolherMeioTransporte(Transporte.aviao);
}

void escolherMeioTransporte(Transporte locomocao) {
  switch (locomocao) {
    case Transporte.carro:
      print("Vou de CARRO para aventura");
      break;
    case Transporte.bike:
      print("Vou de BIKE para aventura");
      break;
    default:
      print("Vou para aventura");
  }
}

enum Transporte {
  carro,
  bike,
  andando,
  skate,
  aviao,
  patins,
  trem
}
