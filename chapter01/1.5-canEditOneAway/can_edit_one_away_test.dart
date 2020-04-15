import 'package:test/test.dart';

import 'can_edit_one_away.dart';

void main() {
  test('1.5-canEditOneAway', () {
    expect(canEditOneAway('pale', 'ple'), true);
    expect(canEditOneAway('pales', 'pale'), true);
    expect(canEditOneAway('pale', 'bale'), true);

    expect(canEditOneAway('pale', 'bake'), false);
  });
}
