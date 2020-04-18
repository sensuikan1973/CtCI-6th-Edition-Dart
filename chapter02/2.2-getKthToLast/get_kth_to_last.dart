import 'package:CtCi_6th_Edition_Dart/linked_list_node.dart';

// Time: O(N)
// Space: O(1)

T getKthToLast<T>(LinkedListNode<T> last, int k) {
  LinkedListNode cur = last;
  for (var i = 0; i < k; ++i) {
    cur = cur.prev;
  }
  return cur.data as T;
}
