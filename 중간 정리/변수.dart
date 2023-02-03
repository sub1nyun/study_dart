import 'dart:io';

main() {
  print("Hello World");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  print(a + b);
}

int add(int a, int b) {
  return a + b;
}
