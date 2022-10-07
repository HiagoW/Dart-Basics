import 'viagem.dart';
import 'transporte.dart';

void main() {
  Viagem viagem = Viagem(locomocao: Transporte.aviao);
  print(viagem.consultarTotalLocaisVisitados);
  viagem.visitar("Museu");
  print(viagem.consultarTotalLocaisVisitados);
  viagem.alterarLocaisVisitados = 9;
  print(viagem.consultarTotalLocaisVisitados);
  viagem.alterarLocaisVisitados = 11;
  print(viagem.consultarTotalLocaisVisitados);
}