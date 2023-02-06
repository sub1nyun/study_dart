// 비동기 처리 future

void main() {
  var delay = Future.delayed(Duration(seconds: 3)); // 리턴을 하는 것이 없음
  // 딜레이 -> 퓨처 타입의 객체가 됨
  delay
      .then((value) => print('3초 지남')) // whenComplete() ->도 가능함
      //then -> 끝났을때 특정한 값이 넘어오게 됨
      //에러 처리가 팔요하다면 -> catch
      .catchError((e) => print(e)); // 에러핸들링이 가능함

  hello().then((value) => print(value));
}

// Future 함수의 경우 async 키워드와 await 세트로 사용해야함
Future<String> hello() async {
  // 오래 걸리는 처리 명시를 위한 await -> Future 함수 안에서만 사용이 가능하며
  // main 함수의 경우 async 처리가 불가능하고
  // Future 타입이 아니기 때문에 then()으로만 받을 수 있음
  await Future.delayed(Duration(seconds: 3));
  return 'Hello';
}
