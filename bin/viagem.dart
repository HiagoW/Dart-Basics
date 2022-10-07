import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = "TEST";
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, double> registrarPrecos = {};
  int _totalLocaisVisitados = 0;

  Viagem({required this.locomocao});

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

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  void registrarPrecoVisita(String local, double preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados {
    return _totalLocaisVisitados;
  }

  set alterarLocaisVisitados(int novaQtd) {
    if (novaQtd < 10) {
      _totalLocaisVisitados = novaQtd;
    } else {
      print("Não é possível!");
    }
  }

}