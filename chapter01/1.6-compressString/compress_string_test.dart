import 'package:test/test.dart';

import 'compress_string.dart';

void main() {
  test('1.6-compressString', () {
    expect(compressString('aabcccccaaa'), 'a2b1c5a3');
    expect(compressString('abc'), 'abc');
  });
}
