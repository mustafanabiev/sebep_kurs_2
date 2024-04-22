void main() {
  final car = Car(name: 'Tesla', jyly: 2023, obiem: 2.0);
  print(car.name);
  car.uydamdyk();

  final mers = Mers(name: 'Mers', jyly: 2020, obiem: 3.2, tv: 'LG');
  print(mers.name);
  mers.uydamdyk();

  final bmw = BMW(name: 'BMW', jyly: 1998, obiem: 1.4, gaz: true);
  print(bmw.name);
  bmw.uydamdyk();
}

class Car {
  Car({
    required this.name,
    required this.jyly,
    required this.obiem,
  });

  final String name;
  final int jyly;
  final double obiem;

  void uydamdyk() {
    print('180 km/s');
  }
}

class Mers extends Car {
  Mers({
    required super.name,
    required super.jyly,
    required super.obiem,
    required this.tv,
  });

  final String tv;

  @override
  void uydamdyk() {
    print('240 km/s');
  }
}

class BMW extends Car {
  BMW({
    required super.name,
    required super.jyly,
    required super.obiem,
    required this.gaz,
  });

  final bool gaz;

  @override
  void uydamdyk() {
    print('200 km/s');
  }
}
