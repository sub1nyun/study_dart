// 다트에서 이벤트 루프에 등록되는 것들이 있음
// 보통은 다 바로 시작이 되지만
// 이벤트 루프에 등록되는 것들의 특징은 main()이 종료되어야 실행이 됨
// 1. network, 2.I/O (file쓰기, 읽기) 3.Future(메인이 마무리 되면 꼭 실행해준다는 의미)

import 'dart:io';

Future<String> download() {
  //sleep(Duration(seconds: 5));
  // String 으로 바로 값을 받아버리면 응답이 오기전이기 때문에 값이 없음
  // Future는 빈박스라고 보면 됨 -> 바로 오면 null 값이기 때문에
  Future<String> value = Future.delayed(Duration(seconds: 5), () {
    // 바로 value에 값이 들어옴 -> null -> Future 빈 박스로 받아주기
    // 5초뒤에 실행될 이벤트를 선언
    // 이벤트 루트에 등록만 해놓고 main()이 마무리 되면 실행됨
    // print('이벤트 실행'); // 3번 실행됨
    return "사과";
  });
  print("다운로드 완료"); // 1번
  return value; //Future 타입 리턴
}

void main() async {
  // await를 받기 위해서는 async라는 키워드를 명시해야함
  //Future<String> test = download(); // 빈 박스를 받고 종료 -> 기다렸다 받기 위해서 await
  String test =
      await download(); // 기다렸다 받기 때문에 빈 박스(Future)가 아닌 것으로 받을 수 있음 await는 빈 박스가 채워져야 실행이 됨
  print(test);
  print('메인 종료'); // 2번
}

void main2() {
  download().then((value) {
    // then() -> 빈박스가 채워져야 실행 됨
    print(value); // 2번
  });
  print('메인2 종료'); // 1번
}

//Future는 빈박스로 데이터를 받을 수 있다는 것을 의미하며
//await는 기다렸다가 데이터를 받겠다는 것
//then은 완료가 되면 실행하겠다는 것
