
library linked_list_node;

class LinkedListNode<T> {
  LinkedListNode(this.data, LinkedListNode<T> next, LinkedListNode<T> previous) {
    setNext(next);
    setPrevious(previous);
  }

  T data;
  LinkedListNode<T> next;
  LinkedListNode<T> prev;
  LinkedListNode<T> last;

  void setNext(LinkedListNode<T> value) {
    next = value;
    if (this == last) last = value;
    if (value != null && value.prev != this) value.setPrevious(this);
  }

  void setPrevious(LinkedListNode<T> value) {
    prev = value;
    if (value != null && value.next != this) value.setNext(this);
  }

  void printFowardNodes() {
    var message = '$data';
    var target = next;
    while(target != null) {
      message = '$data -> ${target.data.toString()}';
      target = target.next;
    }
    print(message);
  }

  List<T> getForwardNodeData(){
    var target = this;
    final result = <T>[];
    while(target != null) {
      result.add(target.data);
      target = target.next;
    }
    return result;
  }
}
