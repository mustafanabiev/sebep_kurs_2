void main() {
  adam(
    name: 'Asan',
    age: 20,
    height: 170,
    weight: 60.3,
    lasName: 'Usonov',
    pol: 'Male',
    // uiBuloo: false,
  );
}

void adam({
  required String name,
  required int age,
  required int height,
  required double weight,
  String? lasName,
  required String pol,
  bool? uiBuloo,
}) {
  print(name);
  print(age);
  print(height);
  print(weight);
  print(lasName);
  print(pol);
  print(uiBuloo);
}

// int kemituu() {
//   return 8;
// }

// String salamdashuu() {
//   return 'Salam';
// }

// bool chynJalgan() {
//   return true;
// }
