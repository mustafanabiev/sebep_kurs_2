void main() {
  Adam person = Adam(
    name: 'Asan',
    height: 180,
    weight: 90.3,
    uibululuubu: true,
    baldary: ['Aibek', 'Aigul', 'Barsbek'],
    cars: {'Mers', 'Matiz'},
    passwordsCards: {
      'mbank': 2324,
      'rsk': 1223,
      'finca': 9087,
    },
  );

  print(person.name);
  print(person.age);
  print(person.height);
  print(person.weight);
  print(person.uibululuubu);
  print(person.baldary);
  print(person.cars);
  print(person.passwordsCards);

  Adam person2 = Adam(
    name: 'Nurtilek',
    age: 22,
    height: 184,
    weight: 80.1,
    uibululuubu: false,
    baldary: [],
    cars: {'Mers', 'BMW'},
    passwordsCards: {
      'rsk': 1223,
    },
  );

  print(person2.name);
  print(person2.age);
  print(person2.height);
  print(person2.weight);
  print(person2.uibululuubu);
  print(person2.baldary);
  print(person2.cars);
  print(person2.passwordsCards);

  Adam person3 = Adam(
    name: 'Erbol',
    age: 20,
    height: 180,
    weight: 75,
    uibululuubu: false,
    baldary: [],
    cars: {'Lexus'},
  );

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
  Adam({
    required this.name,
    this.age,
    required this.height,
    required this.weight,
    required this.uibululuubu,
    required this.baldary,
    required this.cars,
    this.passwordsCards,
  });
  final String name;
  final int? age;
  final int height;
  final double weight;
  final bool uibululuubu;
  final List<String> baldary;
  final Set cars;
  final Map<String, int>? passwordsCards;
}
