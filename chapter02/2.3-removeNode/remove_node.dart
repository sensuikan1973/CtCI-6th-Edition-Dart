import 'package:CtCi_6th_Edition_Dart/linked_list_node.dart';

// Time: O(N)
// Space: O(1)

bool removeNode<T>(LinkedListNode<T> node) {
  if (node == null || node.next == null) return false;

  final next = node.next;
  node
    ..data = next.data
    ..next = next.next;
  return true;
}
