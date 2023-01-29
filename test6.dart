// final 과 const

String choose = "짜장면";
final String choose2 = "볶음밥";
// final -> 한 번 값을 대입하게 되면 변경할 수 없음
const String choose3 = "깐풍기";
// const -> 한 번 값을 대입하면 변경할 수 없음

// 1. final : 실행중에 값이 결정 -> 해당 라인을 읽을 때
// 2. const : 컬파일시에 값이 결정됨 -> 해당 파일을 컴파일을 할때

// ex) 여행 가서 먹을 음식을 미리 지정 -> const
// ex) 여행 중에 직접 먹을 것을 정하는 것 -> final -> 변경 불가

// 어떤 프로그램이 실행된다면 시간에 대한 로그를 남기고 싶다면
var log = DateTime.now(); // -> 현재 시각이 들어감
final log2 = DateTime.now(); // -> 현재 시각(값)이 들어감
//const log3 = DateTime.now(); -> 컴파일시의 값이 들어갈 수는 없음

main() {
  print(log);
  // print(choose);
  // choose = "짬뽕";
  // print(choose);

  // print(choose2);
  // choose2 = "탕수육";

  // print(choose3);
  // choose3 = "오향장육";
}
