import 'dart:io';
import 'dart:isolate';

main() {
  // dart도 쓰레드가 있음
  // 동시 실행하기 -> Isolate 비동기라면 -> Future
  // 독립적인 쓰레드기 때문에 따로 실행이 가능함
  Isolate.spawn(download, "반갑로링");
  //download(); // download 메서드 실행이 먼저 -> 순서를 바꾸고 싶다면 Future로 등록하기
  for (int i = 0; i < 5; i++) {
    sleep(Duration(seconds: 1));
    print(i); // 1초마다 i의 값이 출력 됨
  }
}

void download(var msg) {
  Future(() {
    for (int i = 0; i < 5; i++) {
      sleep(Duration(seconds: 1));
      print('download함수 : ${i}'); // 1초마다 i의 값이 출력 됨
    }
  });
}
