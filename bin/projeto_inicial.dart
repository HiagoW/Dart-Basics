import 'dart:io';

import 'package:projeto_inicial/projeto_inicial.dart' as projeto_inicial;

void main() {
  /// Doc comment
  /** Doc comment**/

  // Variables
  int idade = 26;
  double altura = 1.86;
  final double exp = 780e6;
  bool geek = true;
  bool maiorDeIdade = (idade >= 18);
  const String nome = 'Hiago ' 'Petris';

  print('Minha idade é $idade, minha altura é $altura \n exp: $exp \n '
      'sou geek: $geek \n'
      'maior de idade: $maiorDeIdade\n'
      'nome: $nome');

  // Type Casting
  int strToInt = int.parse('3');
  double strToDouble = double.parse('3.3');
  String intToStr = 10.toString();
  String doubleToStr = 3.1413.toStringAsFixed(2);

  print('$strToInt \n $strToDouble \n $intToStr \n $doubleToStr');

  // Lists
  List<String> listanomes = ['Richart', 'Natália', 'Alex', 'Ândriu', 'André'];

  print(listanomes);
  print(listanomes[0]);
  print(listanomes.length);

  List<dynamic> hiago = [27, 1.86, true, 'Hiago W Petris'];
  print('Eu sou ${hiago[3]}');

  // Var, Const and final
  print('${idade = 42}');
  // final can be assigned later, const not
  final f1;
  f1 = 'test';
  const c1 = 'test2';
  // var = Dart will define variable type
  // const and final cannot be var
  var idade2 = 28;
  print(idade2.runtimeType);

  // If, else, loops
  if (idade >= 18) {
    print('Maior de idade');
  } else {
    print('Menor de idade');
  }

  for (int i = 0; i < 5; i++) {
    stdout.write(i);
  }

  int energia = 100;
  while (energia > 0) {
    print('Mais uma repetição');
    energia -= 10;
  }

  energia = 100;
  do {
    print("Mais uma repetição");
    energia -= 20;
  } while (energia > 0);

  // Null safety
  // ? -> Allow null
  // ! / late -> allow null assignment, but use it only when it is not null
  int? nullSafety = null;
  late int lateAssign;
  lateAssign = 1;
  print(lateAssign);

}
