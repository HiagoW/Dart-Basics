void main() {
  Fruta fruta1 = Fruta("Laranja", 100.2, "Verde e Amarela", "Doce e cítrica", 25);

  print(fruta1.nome);
  fruta1.estaMadura(30);
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita, {this.isMadura});

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. "
        "Ela está madura? $isMadura");
  }
}