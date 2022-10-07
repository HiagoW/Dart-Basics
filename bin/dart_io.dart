import 'dart:io';

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
