
void reverseListUsingStack(List<dynamic> list) {

  List<dynamic> stack = [];

  for (int i = 0; i < list.length; i++) {
    stack.add(list[i]);
  }

  while (stack.isNotEmpty) {
    print(stack.removeLast());  
  }
}



bool areParenthesesBalanced(String str) {
  List<String> stack = [];

  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    if (char == '(') {
      stack.add(char);
    }
    else if (char == ')') {
      if (stack.isEmpty) {
        return false;
      }
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}
