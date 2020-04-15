import 'package:test/test.dart';

import 'urlify.dart';

void main() {
  test('1.2-URLify', () {
    expect(urlify('Mr John Smith    ', 13), 'Mr%20John%20Smith');
    expect(urlify('abc d e fg hijk     ', 15), 'abc%20d%20e%20fg%20hijk');
  });
}
