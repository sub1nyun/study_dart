// 익병함수, 화살표함수

Function hihi = () {
  // 익명함수를 hihi라는 변수에 할당한것
  print("hi");
};

// 익명 함수 var -> var는 모든 타입을 넣을 수 있기때문에 할당이 가능함 -> 타입 고정
var hihihi = () {
  // 익명함수를 hihi라는 변수에 할당한것
  print("var");
};

// 익명 함수 dynamic -> dynamic는 모든 타입을 넣을 수 있기때문에 할당이 가능함 -> 타입 고정X
dynamic hhhh = () {
  // 익명함수를 hihi라는 변수에 할당한것
  print("dy");
};

// 함수가 가지고 있는 내부 스택(코드 블럭)이 한 줄이면 내가 다른 방법을 제시함 -> 화살표 함수
Function add = () {
  return 1 + 1;
};

//화살표 함수 적용 var은 화살표 함수 표현이 불가능함
int add2() => 1 + 1; // return 키워드가 생략이 가능해짐

void main() {
  hihi();
  print(add());
  print(add2());
  sum();
  sum2();
  sum3();
  sum4();
}

// 기본 함수
int sum() {
  return 10;
}

// 익명 함수를 저장하는 sum2() qustn
Function sum2 = () {
  // 함수기때문에 Function 타입에 할당해줘야함
  return 10;
};

// 화살표 함수 1
int sum3() => 10; // 코드블럭이 한 줄이라면 리턴과 중괄호를 삭제해서 표현이 가능함

// 화살표 함수를 저장하는 sum4 변수
Function sum4 = () => 10;
