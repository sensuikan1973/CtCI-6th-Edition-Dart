import 'package:CtCi_6th_Edition_Dart/linked_list_node.dart';
import 'package:test/test.dart';

import 'get_kth_to_last.dart';

void main() {
  test('1.9-removeDups', () {
    var cur = LinkedListNode<int>(0, null, null);
    LinkedListNode<int> next;

    for (var i = 0; i < 10; ++i) {
      next = LinkedListNode<int>(i, null, null);
      cur.setNext(next);
      next.setPrevious(cur);
      cur = next;
    }

    expect(getKthToLast<int>(cur, 3), 6);
    expect(getKthToLast<int>(cur, 7), 2);
  });
}
