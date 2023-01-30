// 접근지정자와 get, set

import '40min.dart';
import 'car.dart';
import 'test1.dart';

class Animal {
  late String name;
  // 다트는 기본이 public이고 -> 모든 접근이 가능함
  // 변수명 앞에 _를 붙히면 private -> 해당 파일만 접근이 가능함
  late String _name2;
}

//같은 파일이기 때문에 접근이 가능함
class Test {
  void play() {
    Animal a2 = Animal();
    a2._name2 = "원숭이";
  }
}

String? tt;
late int q;

main() {
  String t;

  q = 0;
  print(q);
  print(q is int); // true
  print(q.runtimeType); // type 출력

  print(tt);
  tt = "테스트";
  print(tt);

  Animal a1 = Animal();
  a1.name = "호랑이";
  print(a1.name);
  a1._name2 = "사자"; // 접근이 가능함
  print(a1._name2);

  // car 접근해보기
  Car c = Car("아반떼"); // car.dart 파일 import
  //c._name // private 이기 때문에 찾아지지 않음
  print("자동차는 ${c.getName()}");
  //축약해서 표현하기
  print(c.name); // 함수를 호출하는것 get
  c.name = "제네시스"; // set
  print(c.name); // get
}
