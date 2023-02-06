// 제네릭 -> 타입 정의

void main() {
  var box = Box<int>(10);
  var box2 = Box<String>('ddd');
}

class Box<T> {
  // T 말고 아무거나 가능함
  T value;

  Box(this.value);

  T getValue() {
    return value;
  }
}
