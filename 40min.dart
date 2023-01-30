import 'dart:async';

int num1 = 10;

main() {
  print(Point.globalVar = '333'); // 초기화 안 했는데 사용이 가능함
  Point.test();

  print(num1); // 출력
  print(num1 is int); // 타입 검사
  print(num1.runtimeType); // 해당 타입 출력

  var i = 10; // int
  var d = 19.2; //double
  var srt = 'hello'; // String
  // var의 경우는 값이 들어가게 되면 타입이 고정이 되며
  // 컴파일 타임에 타입이 결정됨

  // dynamic의 경우는 값이 들어가게 되더라도 타입이 변경이 가능함
  // 런타임할때 타입이 결정됨 -> 컴파일 타임에 타입을 알 수 없어서 사용하지 않음
  dynamic a = 10;

  // 상수
  final String name = 'subin'; // 런타임시 결정
  const int age = 10; // 컴파일 타임에 결정

  // null safety
  String? age2 = null; // ? 마크를 선언해주면 nullable -> 널허용 -> 기본적으로 널 값이 들어있음
  // null 타입을 String 타입에 할당이 불가능함
  // String result = age2!; // 가능은 하나 if 문으로 널을 체크하는것이 좋음

  // ?? 연산자(null)
  String? str;
  str ??= "hello"; // 왼쪽의 값이 null 이면 값을 취함
  str = str ?? "hello"; // 위와 같음
  print(str);

  // 타입캐스팅
  num i1 = 10;
  int ii = i1 as int; // 강제 타입 캐스팅이 가능함

  num d1 = 10.5;
  double d2 = d1 as double;
  print(d2);

  print(calc(10, 5, (a, b) => a + b));

  //기본 함수 호출
  print(sum1(10, 10));
  //옵션 함수 호출
  print(sum2()); // 기본 값이 있어서 따로 지정하지 않아도 됨
  print(sum2(a: 10)); // 하나만 지정 가능 -> 네임드 파라미터

  john['name'] = 'peter'; // 키 값 지정해서 접근이 가능함
}

int calc(int a, int b, Function(int, int) callback) {
  return callback(a, b);
}

// 기본 함수
int sum1(int a, int b) {
  return a + b;
}

// 메개변수 옵션 함수 -> 기본값 지정해주기
int sum2({int a = 0, int b = 0}) {
  return a + b;
}

// 화살표 함수(내용물이 한 줄이라면 표현이 가능함)
int sum3(int a, int b) => a + b; // return 키워드 생략

// 기본 함수
int sum() {
  return 10;
}

// 화살표 함수를 저장하는 sum4 변수
Function sum4 = () => 10;

// list
List<int> items = [
  1,
  2,
  3,
  if (true) 4
]; // true 면 4가 들어감 if문에 {} 사용 불가능 -> 한줄 if 문만 가능함

Map<String, dynamic> john = {'name': 'John', 'age': 40};
Map<String, Object?> john2 = {}; // 도 가능함

class Point {
  int x = 0;
  int y = 0;
  late int _x; // private로 접근이 불가능함
  int? z; // ?
  late int a; // late 키워드를 사용하여서 늦은 초기화가 가능함
  // 선언한 시점 null final 키워드 사용도 무방함

  static String globalVar = 'test'; // point가 없어도 작동함
  static void test() {
    print("ddd");
  }

  // 생성자
  Point(this.x, this.y, [this.z]); // ?로 선언한 변수를 []로 감싸면 값을 넣지 않아도 인스턴스화가 가능함
  Point.second(this.x, this.y, [this.z]) {
    a = x + y; // 특정 값을 받은 후 생성이 되야 한다면
  }

  Point.fromMap(Map map) {
    x = map['x'];
    y = map['y'];
  }

  void move() {
    print("move");
  }
}
