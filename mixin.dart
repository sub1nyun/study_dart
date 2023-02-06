void main() {
  SupserHero supserHero = SupserHero();
  Hero hero = SupserHero();
  Moveable moveable = SupserHero();
  Drawable drawable = SupserHero();
}

// mixin -> 다중상속의 효과를 낼 수 있음'

mixin Moveable {
  // 기능정의를 하는것이 일반적임
  void move() {
    int i = 0;
    // 프로퍼티를 갖을 수 있으며 추상클래스와 비슷하나
    // 인스턴스화가 불가능함

    // ~~
  }
}

mixin Drawable {
  void draw() {}
}

class Hero {}

class SupserHero extends Hero with Moveable, Drawable {
  // 기본적으로 다중상속이 안 됨
  // with 키워드를 통하여 mixin의 기능들을 가져갈 수 있음
}
