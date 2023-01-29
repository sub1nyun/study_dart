add(int n1, var n2) {
  //타입을 명시해주는 게 좋음 int
  // 리턴타입을 정의하지 않아도 됨(다트)
  print("더하기 함수");
  print(n1 + n2);
  return n1 + n2;
}

// 함수를 변수에 담아서 사용이 가능함
Function addF = ({int n1 = 1, int n2 = 1}) {
  print("펑션에 담기");
  return n1 + n2;
};

void hello(Function t) {
  t();
}

void main() {
  add(3,
      5); // add() 함수가 호출이 가능한 이유는 main 함수를 읽기전에 add()라는 함수를 메모리에 저장해놓기때문에 찾을 수 있음
  //int 형이 아닌 실수가 들어올 경우라면 var 로 선언
  add2(); // 파라메터가 없으면 디폴트 값인 n1, n2 값을 사용함
  add2(n1: 10); // 하나의 값만 명시해서도 사용이 가능함
  add2(n1: 10, n2: 20);
  int result = add(1, 2); //add() 함수에서 리턴을 추가해서 받아서 사용하는 것또한 가능함
  print(result);
  hello(addF); // 함수를 담고 있는 변수 파라메터로 사용하기

  // var 과 dynamic의 차이

  var num = 10;
// num = "안녕";
// var 타입은 -> 값이 들어간다면 타입이 고정됨

//dynamic은 타입이 고정되지 않음 -> 변경이 가능
  dynamic sum = 20;
  sum = "안녕";

  print(isRunning);

  if (isRunning) {
    print("달리고 있다 이거야");
  } else {
    print("거짓임");
  }

  // 삼항 연산자 사용 가능 ( 조건 ? t : f)
  String s = isRunning ? '참' : '아님';
  String ss = 1 == 1 ? '참' : 'ㄴㄴ'; // 1 == 1 같은 조건문이 들어와도 됨
  print(s);
  print("결과 ${s}");

  // 엘비스 연산자(Elvis) -> null 값을 확인하기

  print("이름은? ${name2}");
  String data = name2 ?? '테스트';
  print("널이면 이름은? ${data}");

  int input;
}

Null name2 = null;

// dart는 오버로딩이 되지 않음 -> var로 범용사용
// 선택적 매개변수를 사용할 수 있음
// 기본값을 할당이 가능함

// 기본값 지정 형태
void add2({int n1 = 1, var n2 = 1}) {
  print("default값 지정형태");
  print(n1 + n2);
}

// bool 타입
bool isRunning = true;

// if 조건문과 잘 맞음 -> bool 
