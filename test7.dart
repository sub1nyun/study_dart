// 클래스

// 1.dart의 모든 것들은 1급 객체
// java 처럼 1급 객체인 클래스 안에 모든 것을 넣을 필요가 없음

// 2.class는 여러가지 타입의 데이터를 저장할 수 있음
// 3.class는 (자동으로) 메모리에 뜨지 않는다.
// 4.class는 개발자가 직접 메모리에 로딩해야함

// class 이름은 첫글자는 대문자로 작성
class Dog {
  // Object라고 명함
  // 해당 클래스를 표현하는 데이터로 -> 프로퍼티, 속성이라고 칭함
  // 여러가지 데이터를 담기위해서 사용
  var name = "초코";
  var age = 2;
  var color = "브라운";

  void sound() {
    // 메서드도 메모리에 뜨지 않음
    print("멍멍");
  }
}

// class의 특징 (다트)
class Animal {
  void hello() {
    name = "식물";
  }

  var name = "동물임";
}

class User {
  // 값이 초기화가 안 되있음 프로퍼티들이
  var id;
  var name;
  var phone;

  // 생성자
  User() {
    id = 2;
  }
  // 다른 생성자 만들기
  User.second() {
    // 이름이 있는 생성자
    id = 5;
    name = "임꺽정";
    phone = "0108807";
  }
}

main() {
  Dog dog = new Dog(); // -> new() 됐다는 것은 메모리에 로드 -> 인스턴스
  // new 연산자를 통해서 직접 메모리에 띄우는 것이 가능함
  Dog dog2 = Dog();
  // new 연산자를 생략하는것도 가능함
  print(dog.name);
  dog.sound();
  print(dog2.name);

  // 케스케이드(..) -> 자바의 빌더패턴과 유사함
  Animal a = Animal()..hello(); // 인스턴스화 하면서 함수를 호출하는것이 가능함
  print(a.name); // 식물이 나옴
  Animal a2 = Animal()..name = "사자";
  print(a2.name);

  User u = new User() //즉시 초기화하여서 사용에 용이함
    ..id = 1
    ..name = "홍길동"
    ..phone = "0100000";

  User u2 = new User.second();
  print(u2.name);
}
