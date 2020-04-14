import 'package:test/test.dart';

import 'check_permute.dart';


void main() {
  test('1.2-checkPermute', () {
    expect(checkPermute('aba', 'baa'), true);
    expect(checkPermute(' aba', 'baa '), true);
    expect(checkPermute('ab a', 'b aa'), true);

    expect(checkPermute('aba', 'baa '), false);
    expect(checkPermute(' aba', 'baa'), false);
    expect(checkPermute('aba', 'baba'), false);
    expect(checkPermute('aba', 'aBa'), false);
  });
}
