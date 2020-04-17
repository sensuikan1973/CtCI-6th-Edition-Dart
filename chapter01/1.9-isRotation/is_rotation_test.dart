import 'package:test/test.dart';

import 'is_rotation.dart';

void main() {
  test('1.9-zeroMatrix', () {
    expect(isRotation('waterbottle', 'erbottlewat'), true);
    expect(isRotation('bird', 'dbir'), true);
  });
}
