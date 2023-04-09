import 'package:mod8_fikri_1301200239/mod8_fikri_1301200239.dart' as mod8_fikri_1301200239;

void main() {
  print("1. Variable");
  int x = 5;
  double y = 3.14;
  String name = 'Fikri Maulana';
  bool isMarried = false;
  print(x);
  print(y);
  print(name);
  print(isMarried);
  
  print("");
  print("Fikri Maulana 1301200239");
  print("2. Statement Control");
  if (x > 0) {
    print('$x is a positive number');
  } else {
    print('$x is not a positive number');
  }
  

  print("");
  print("Fikri Maulana 1301200239");
  print("3. Looping");
  for (int i = 0; i < 5; i++) {
    print(' Looping The value of i is $i');
  }
  
  print("");
  print("Fikri Maulana 1301200239");
  int i = 0;
  while (i < 5) {
    print('The value of i is $i');
    i++;
  }


  print("");
  print("Fikri Maulana 1301200239");
  print("4. List");
  List<int> numbers = [1, 2, 3, 4, 5];
  print('The first number in the list is ${numbers[0]}');
  

  print("");
  print("Fikri Maulana 1301200239");
  print("5. Function");
  int addNumbers(int a, int b) {
    return a + b;
  }
  

  print("");
  print("Fikri Maulana 1301200239");
  int result = addNumbers(3, 4);
  print('The result of adding 3 and 4 is $result');
}
