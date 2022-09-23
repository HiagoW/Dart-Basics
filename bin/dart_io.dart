import 'dart:io';

import 'package:projeto_inicial/projeto_inicial.dart' as projeto_inicial;

void main() {
  print("Qual a sua idade?");
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    int idade = int.parse(input);
    print("Sua idade é $idade");
  } else {
    print("Não foi possível calcular o valor da idade");
  }

}
