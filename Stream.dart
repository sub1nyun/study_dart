import 'dart:math';

void main() {
  // 스트림이란 -> 데이터의 흐름을 나타내는 것을 의미함

  var stream = Stream.fromIterable([1, 2, 3]);

  stream.listen((event) {
    print(event); // 123 이 순서대로 들어옴
    //firebase를 사용할 경우 실시간으로 바뀌는 데이터를 확인 할 수 있음
  });
}
