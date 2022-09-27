void main() {
  Fruta fruta1 =
      Fruta("Laranja", 100.2, "Verde e Amarela", "Doce e cítrica", 25);

  print(fruta1.nome);
  fruta1.estaMadura(30);

  Legumes mandioca = Legumes('Macaixera', 1200, 'Marrom', true);
  Fruta banana = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia =
      Nozes('Macadâmia', 2, 'Branco Amarelo', 'Doce', 20, 35, isMadura: true);
  Citricas limao = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  mandioca.printAlimento();
  banana.printAlimento();
  macadamia.printAlimento();
  limao.printAlimento();

  mandioca.cozinhar();
  limao.fazerSuco();

  print(macadamia.isMadura);
  print(limao.isMadura);

  banana.separarIngredientes();
  macadamia.fazerMassa();
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  // Another option:
  /** Fruta(
      super.nome, super.peso, super.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura}) **/

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. "
        "Ela está madura? $isMadura");
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }

  @override
  void separarIngredientes() {
    print('Catar a $nome');
  }

  @override
  void fazerMassa() {
    print('Misturar a fruta com farinha e ovos');
  }

  @override
  void assar() {
    print('Colocar no forno');
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor.');
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome está cozinhando!');
    } else {
      print('Nem precisa cozinhar');
    }
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void assar() {
    // TODO: implement assar
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe refrigerante de $nome');
    } else {
      print('Não existe refri de $nome');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural,
      {bool? isMadura})
      : super(nome, peso, cor, sabor, diasDesdeColheita, isMadura: isMadura);

  // Another option
  /** Nozes(super.nome, super.peso, super.cor, super.sabor,
      super.diasDesdeColheita, this.porcentagemOleoNatural,
      {bool? super.isMadura}); **/

  @override
  void fazerMassa() {
    print('Tirar a casca');
    super.fazerMassa();
  }
}

abstract class Bolo {
  void separarIngredientes();

  void fazerMassa();

  void assar();
}
