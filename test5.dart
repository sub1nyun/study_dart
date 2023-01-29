// 반복문 사용하기
// 배열의 복사와 같이 알야야 좋음

// 변수명에 '-' 하이픈 못 들어가는 거 같음
void main() {
  List<int> list_defualt = [1, 2, 3, 4];
  var list = [1, 2, 3, 4];

  // 기본 반복문
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }
  print("======");
  // for in 사용 (list라는 배열의 끝까지 돌것이라면 ...)
  for (var e in list) {
    print(e);
  }
  // forEach 문 -> 내부에서 for in 문을 사용하기 때문에 굳이 사용하지 않음
  // 내부에 for in문이 있기 때문에 익명 함수를 넣어줌
  // dart 에서 사용하는것은 별로
  list.forEach((element) => print(element)); // => 리턴을 생략하기 위함인데 옳지 않음
  // foreach 자체가 void이기 때문에 리턴을 해주는 것이 아니라 출력만 했음
  list.forEach((element) {
    print(element);
  }); // 올바른 방법

  // 배열의 복사

  // 1. 얕은 복사 하기
  var newList = list; // 배열의 주소를 복사해감
  print(newList);

  // 2. 깊은 복사 하기
  // map -> 값을 연산해서 리턴할 수 있음
  var mapList =
      list.map((e) => e + 1); // map()의 경우는 리턴이 있기때문에 mapList에 (리턴)재할당해줌
  print(mapList); // 값을 변형해서 넣을 수 있음

  // 3. 값을 그대로 사용하여 깊은 복사를 하기
  var spreadList = [...list]; // 스프레드(흩뿌리다) -> list의 값을 뿌리면 1, 2, 3, 4
  // 1,2,3,4 라는 타입을 넣을 수 있는 변수가 없기에 [ ]로 감싸줌
  print(spreadList); // 흩뿌린 값을 넣었기때문에 새로운 배열이 생성됨
  var spreadList2 = [10, ...list, 100];
  print(spreadList2); // 10, 1, 2, 3, 4, 100

  // 4. 배열에서 특정한 값을 필터링 후 복사 하기
  // 리턴 값이 bool 이어야함
  var filterList = list.where((e) => e == 2);
  // 2 값 지워보기 e != 2
  print(filterList);
} // main

// 기본 반복 -> 일반 for문 또는 for in문을 사용
// 반복 후 리턴 -> map()
// 반복 후 어떤 값을 걸러내고 싶다면 -> where
