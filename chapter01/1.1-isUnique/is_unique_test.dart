import 'package:test/test.dart';

import 'is_unique.dart';

void main() {
  test('1.1-isUnique', () {
    expect(isUnique('foo'), false);
    expect(isUnique('bar'), true);
    expect(isUnique('abcdefgh'), true);
    expect(isUnique('1234561'), false);
  });
}
