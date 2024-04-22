void main() {
  // String name = 'Asan';
  // int age = 30;
  // int height = 190;
  // double weight = 85.9;
  // print(name);
  // print(age);
  // print(height);
  // print(weight);

  Adam person = Adam();
  print(person.name);
  print(person.age);
  print(person.height);
  print(person.weight);
  print(person.uibululuubu);
  print(person.baldary);
  print(person.cars);
  print(person.passwordsCards);

  Adam2 person2 = Adam2();
  print(person2.name);
  print(person2.age);
  print(person2.height);
  print(person2.weight);
  print(person2.uibululuubu);
  print(person2.baldary);
  print(person2.cars);
  print(person2.passwordsCards);

  Adam3 person3 = Adam3();
  print(person3.name);
  print(person3.age);
  print(person3.height);
  print(person3.weight);
  print(person3.uibululuubu);
  print(person3.baldary);
  print(person3.cars);
  print(person3.passwordsCards);
}

class Adam {
  String name = 'Uson';
  int age = 40;
  int height = 180;
  double weight = 89.1;
  bool uibululuubu = true;
  List<String> baldary = ['Aibek', 'Aigul', 'Barsbek'];
  Set cars = {'Mers', 'Matiz'};
  Map<String, int> passwordsCards = {
    'mbank': 2324,
    'rsk': 1223,
    'finca': 9087,
  };
}

class Adam2 {
  String name = 'Nurtilek';
  int age = 22;
  int height = 184;
  double weight = 80.1;
  bool uibululuubu = false;
  List<String> baldary = [];
  Set cars = {'Mers', 'BMW'};
  Map<String, int> passwordsCards = {
    'rsk': 1223,
  };
}

class Adam3 {
  String name = 'Erbol';
  int age = 20;
  int height = 180;
  double weight = 74.1;
  bool uibululuubu = false;
  List<String> baldary = [];
  Set cars = {'Lexus'};
  Map<String, int> passwordsCards = {
    'mbank': 2324,
    'finca': 9087,
  };
}
