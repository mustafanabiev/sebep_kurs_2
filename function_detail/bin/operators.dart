void main() {
  kushuu(num1: 20, num2: 20);
  int sum = kemituu(20, 10);
  print(sum);
  koboituu(4, 5);
  boluu(20, 5);
}

void kushuu({required int num1, required int num2}) {
  print(num1 + num2);
}

int kemituu(int san1, int san2) {
  return san1 - san2;
}

void koboituu(int san1, int san2) {
  print(san1 * san2);
}

void boluu(int san1, int san2) {
  print(san1 / san2);
}
