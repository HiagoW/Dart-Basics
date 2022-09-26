void main() {
  // bool isMadura = funcEstaMadura(30);
  // print(isMadura);

  mostrarMadura("Uva", 40, cor: "Roxa");

  mostrarMadura2("Uva", 40);
  mostrarMadura2("Uva", 40, cor: "Verde");

  mostrarMadura3("Uva", 40, cor: "Roxa");

  int quantosDias = funcDiasParaMadura(40);
  print(quantosDias);
}

// void
// positional optionals
mostrarMadura(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  if (cor != null) {
    print("A $nome é $cor");
  }
}

// positional optionals with default
mostrarMadura2(String nome, int dias, {String cor = "sem nome"}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  print("A $nome é $cor");
}

// positional required
mostrarMadura3(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  print("A $nome é $cor");
}

int funcDiasParaMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias - diasParaMadura;
  return quantosDiasFaltam;
}
bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  }
  return false;
}