import 'package:flutter_test/flutter_test.dart';
import 'package:zitopay/zitopay.dart';

void main() {
  test('adds one to input values', () {
    final url = Zitopay("500", "democreator").pay();
    print(url);
  });
}
