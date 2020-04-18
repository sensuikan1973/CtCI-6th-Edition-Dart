import 'package:CtCi_6th_Edition_Dart/linked_list_node.dart';

void removeDups<T>(LinkedListNode<T> node) {
  final set = <T>{};
  var cur = node;
  LinkedListNode prev;
  while (cur != null) {
    assert(cur.data is T);
    if (set.contains(cur.data)) {
      prev.next = cur.next;
    } else {
      set.add(cur.data);
      prev = cur;
    }
    cur = cur.next;
  }
}
