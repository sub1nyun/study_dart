//Isolate의 특징

import 'dart:isolate';

int num = 10;

void change(var value) {
  num = value;
  print('change: ${num}');
}

void check(var value) {
  print('check : ${num}');
}

void main() {
  Isolate.spawn(change, 20); // 동시에 실행이 되어서 value에 20이 들어감 -> 20, 50이 출력됨
  Isolate.spawn(
      check, ''); // 20이 아닌 10이 출력됨 -> 바뀐 20이 아닌 다른 heap 영억을 사용하기에 기존의 10이 나옴
  change(50);
}

// isolate는 다른 언어의 스레드와 유사하나
// 차이점은 heap을 공유하지 않고 -> 독립적인 heap이 있음

// 특정 이벤트가 들어왔을 경우 오래 기다려야한다면 => Future
// 동시에 실행하고 싶다면 Isolate를 사용할 것 