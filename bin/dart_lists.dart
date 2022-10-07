void main() {
  List<String> list = ["Richart", "Ruan", "da", "Silva", "Lima"];

  var sublist = list.sublist(1, 3);
  print(sublist);
  sublist = list.sublist(1);
  print(sublist);

  list.forEach((element) {
    print(element);
  });

  print(list.contains("Silva"));

  String myname = list.reduce((value, element){
    return value + " " + element;
  });
  print(myname);

  Iterable maior = list.where((element) => element.length > 4);
  print(maior.toList());

  print(list.firstWhere((element) => element.length > 4));
  print(list.lastWhere((element) => element.length > 4));
}
