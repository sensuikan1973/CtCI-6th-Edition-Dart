import 'package:CtCi_6th_Edition_Dart/linked_list_node.dart';
import 'package:test/test.dart';

import 'remove_node.dart';

void main() {
  test('1.9-removeDups', () {
    var cur = LinkedListNode<int>(0, null, null);
    LinkedListNode<int> next;
    final head = cur;

    for (var i = 0; i < 10; ++i) {
      next = LinkedListNode<int>(i, null, null);
      cur.setNext(next);
      next.setPrevious(cur);
      cur = next;
    }

    final list = head.getForwardNodeData();
    removeNode(head.next.next);
    final listAfterRemoved = head.getForwardNodeData();
    expect(list.length - 1, listAfterRemoved.length);
  });
}
