import 'package:projeto_inicial/projeto_inicial.dart' as projeto_inicial;

void main() {
  int idade = 26;
  double altura = 1.86;
  double exp = 780e6;
  bool geek = true;
  bool maiorDeIdade = (idade >= 18);
  String nome = 'Hiago ''Petris';

  print('Minha idade é $idade, minha altura é $altura \n exp: $exp \n '
      'sou geek: $geek \n'
      'maior de idade: $maiorDeIdade\n'
      'nome: $nome');

  int strToInt = int.parse('3');
  double strToDouble = double.parse('3.3');
  String intToStr = 10.toString();
  String doubleToStr = 3.1413.toStringAsFixed(2);

  print('$strToInt \n $strToDouble \n $intToStr \n $doubleToStr');
}
