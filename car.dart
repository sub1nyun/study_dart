class Car {
  late String _name;

  //초기화 생성자가
  Car(this._name) {}

  // 생긴게 변수처럼 생김?
  String get name {
    // Getter
    // 가운데 get 표현이 존재함
    return _name;
  }

  // Setter
  set name(String v) {
    _name = v;
  }

  void setName(String value) {
    _name = value;
  }

  //get, set을 생성해서 접근해 보기
  String getName() {
    return _name;
  }
}
