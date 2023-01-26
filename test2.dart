// 기본 자료형 -> 클래스 안이나 메서드안에 위치하지 않음 -> 1급 객체(함수의 파라메터로 전달이 가능하며, 메모리에 로딩이 되어있음)
var name = "문자열";
var num2 = 1;
var fNum = 1.5;
var list = ["apple", "banana"];
var user = {
  // object라고 하지 않고 Map 자료형이라 칭함
  "id": 1,
  "username": "ysb"
};

String name2 = "문자열"; // "" 와 '' 둘다 가능함
int num = 1;
double dNum = 1.5;
List<String> list2 = ["apple", "banana"];
Map<String, dynamic> user2 = {
  // Java의 Object = dynamic
  "id": 1,
  "username": "ysb"
};
bool f = false;
bool t = true;
dynamic dddd = "여기에는 뭐가 올 수 있음?";

void main() {
  // 메모리에 떠있기 때문에 실행 할 수 있음
  print(name);
  print(num2);
  print(fNum);
  print(list);
  print(list[0]); // list의 번지 수 찾기
  print(user);
  print(user["id"]); //key 값을 입력하여 찾으 수 있음

  print("=================");

  print(name2);
  print("${name2} 입니다"); // 사용할 변수를 ${}를 통하여 출력이 가능함
  print(num);
  print(dNum);
  print(list2);
  print(list2[1]);
  print(user2);
  print(user2["username"]);
  print("유저 네임은 " + user2["username"]);
  print("유저 네임은2 ${user2["username"]}"); // 숫자끼리 더하기, 문자끼리 결합
  print(t);
  print(f);
  print(dddd);
}
