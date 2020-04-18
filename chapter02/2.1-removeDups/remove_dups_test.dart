import 'package:CtCi_6th_Edition_Dart/linked_list_node.dart';
import 'package:test/test.dart';

import 'remove_dups.dart';

void main() {
  test('1.9-removeDups', () {
    var first = LinkedListNode<int>(0, null, null);
    final head = first;
    LinkedListNode<int> next;

    for (var i = 1; i < 10; ++i) {
      next = LinkedListNode<int>(i % 2, null, null);
      first.setNext(next);
      next.setPrevious(first);
      first = next;
    }

    removeDups(head);

    final list = head.getForwardNodeData();
    // check whether duplicate items have been removed
    expect(list.toSet().toList(), list);
  });
}
