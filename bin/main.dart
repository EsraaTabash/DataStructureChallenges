import 'package:data_structure_challenges/linked_list_challenges.dart';
import 'package:data_structure_challenges/linked_list_node.dart';
import 'package:data_structure_challenges/stacks_challenges.dart';
void main() {
  //Stack challenge1
  List<int> numbers = [10, 20, 30, 40];
  reverseListUsingStack(numbers);

  //Stack challenge2
  String str1 = "(())"; 
  String str2 = "(()";   

  print(areParenthesesBalanced(str1));  
  print(areParenthesesBalanced(str2));  

  //LinkedList challenge1
  LinkedListNode head = LinkedListNode(1);
  head.next = LinkedListNode(2);
  head.next!.next = LinkedListNode(3);

  printLinkedListInReverse(head);


  //LinkedList challenge2
  head.next!.next!.next = LinkedListNode(4);
  head.next!.next!.next!.next = LinkedListNode(5);

  LinkedListNode? middle = findMiddleNode(head);
  if (middle != null) {
    print("Middle Node content is : ${middle.data}");
  }


  //LinkedList challenge3
 print("before reverse :");
 printList(head);

  LinkedListNode? reversedHead = reverseLinkedList(head);

 print("after reverse :");
 printList(reversedHead);

// LinkedList challenge4
print("before delete :");
printList(reversedHead);  // 

LinkedListNode? updatedHead = removeAllOccurrences(reversedHead, 5);  

print("\nafter delete :");
printList(updatedHead);


}
