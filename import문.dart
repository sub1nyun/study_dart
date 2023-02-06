import 'dart:async' as async; // as 키워드를 사용하여 별칭 가능
import '40min.dart' hide john;
// hide 키워드를 통해서 import할 클래스 안의 특정 정보를 숨길 수 있음
import '40min.dart' show john2; // show 특정한 것만 보이게 할 수도 있음

void main() {
  async.Completer;
  // 별칭선언한 것으로 불러오기 가능
}
