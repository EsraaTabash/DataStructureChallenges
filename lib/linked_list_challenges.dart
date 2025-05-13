import 'package:data_structure_challenges/linked_list_node.dart';

void printLinkedListInReverse(LinkedListNode? head) {
  List<int> stack = [];

  LinkedListNode? current = head;
  while (current != null) {
    stack.add(current.data);
    current = current.next;
  }

  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}



LinkedListNode? findMiddleNode(LinkedListNode? head) {
  if (head == null) return null;

  LinkedListNode? slow = head;
  LinkedListNode? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  return slow;
}



void printList(LinkedListNode? head) {
  while (head != null) {
    print(head.data);
    head = head.next;
  }
} 

LinkedListNode? reverseLinkedList(LinkedListNode? head) {
  LinkedListNode? prev = null;
  LinkedListNode? current = head;

  while (current != null) {
    LinkedListNode? next = current.next; 
    current.next = prev;       
    prev = current;            
    current = next;            
  }

  return prev; 
}

LinkedListNode? removeAllOccurrences(LinkedListNode? head, int value) {
  while (head != null && head.data == value) {
    head = head.next;
  }

  LinkedListNode? current = head;

  while (current != null && current.next != null) {
    if (current.next!.data == value) {
      current.next = current.next!.next; 
    } else {
      current = current.next; 
    }
  }

  return head;
}