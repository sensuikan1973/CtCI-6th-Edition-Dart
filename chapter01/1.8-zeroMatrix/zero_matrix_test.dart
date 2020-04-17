import 'package:test/test.dart';

import 'zero_matrix.dart';

void main() {
  test('1.8-zeroMatrix', () {
    expect(
        zeroMatrix([
          [1, 1, 1, 1],
          [1, 0, 1, 1],
          [1, 1, 1, 1],
          [1, 1, 1, 0],
        ]),
        [
          [1, 0, 1, 0],
          [0, 0, 0, 0],
          [1, 0, 1, 0],
          [0, 0, 0, 0],
        ]);
  });
}
