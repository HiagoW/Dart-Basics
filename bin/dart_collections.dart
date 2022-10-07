import 'dart:ffi';

void main() {
  Set<String> registrosVisitados = <String>{};

  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  registrosVisitados = registrarDestinos("Recife", registrosVisitados);
  registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);

  print(registrosVisitados);

  Map<String, double> registrarPrecos = {};
  registrarPrecos["São Paulo"] = 1200;
  registrarPrecos["Rio de Janeiro"] = 1500;
  print(registrarPrecos);
  print(registrarPrecos["São Paulo"]);
  registrarPrecos["São Paulo"] = 1900;
  print(registrarPrecos["São Paulo"]);
  registrarPrecos.remove("São Paulo");
  print(registrarPrecos);
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}