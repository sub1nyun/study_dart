// 상속

void main() {
  Dog dog = Dog();
  Cat cat = Cat();
  Animal dog2 = Dog();
  Animal cat2 = Cat();
  dog.walk();
  cat.walk();
  dog2.walk();
  cat2.walk();
}

abstract class Animal {
  void walk() {
    print("walk");
  }
}

class Dog extends Animal {}

class Cat extends Animal {
  // void walk() {
  //   print("walk"); // 동일한 코드
  // }
  @override
  void walk() {
    print("애옹애옹");
  }

  void eat() {}
}
