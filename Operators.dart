// Operators in dart

/*
Arithmatic Operators
+,-,*,/,%,~/
*/

// Relational operators are the same
// is and is! are type test operators

/*
Bitwise operators
&, |, ^, ~ bitwise not, >>, <<, >>> is unsigned right shift
*/

// Logical Operator
// &&, ||, !

// assignment operators has = and ??=. ??= assigns value when var is null
import 'dart:io';
void main()
{
  print(4 ~/ 3); // Gives quotient

  // there is no 'not' keyword in dart. is expects datatype. 2 is 2 ain't allowed.
  print(3 is String); // false
  print(3 is ! String); // true
  print(3 is double); // false
  print("Enter something: ");
  int no=int.parse(stdin.readLineSync()??'0');
  no??=20;
  print(no);
}