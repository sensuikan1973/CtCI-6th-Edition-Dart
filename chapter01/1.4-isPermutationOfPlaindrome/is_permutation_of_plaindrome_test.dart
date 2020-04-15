import 'package:test/test.dart';

import 'is_permutation_of_plaindrome.dart';

void main() {
  test('1.4-isPermutationOfPlaindrome', () {
    expect(isPermutationOfPlaindrome('abcbc'), true);
    expect(isPermutationOfPlaindrome('abcabc'), true);
    expect(isPermutationOfPlaindrome('abcab'), true);
    expect(isPermutationOfPlaindrome('Tact Coa'), true);

    expect(isPermutationOfPlaindrome('abc'), false);
    expect(isPermutationOfPlaindrome('fooo'), false);
    expect(isPermutationOfPlaindrome('abccbc'), false);
    expect(isPermutationOfPlaindrome('Tact boa'), false);
  });
}
