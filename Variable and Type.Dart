// Variable and Typecasting in Dart

/*
Type of variables

Static Variables
int
String
double
bool

Dynamic Variables
uses 'dynamic' keyword. Can take whatever type of data as in python. Similar to 'var'

Const and final
used to make variable immutable. can be written with or without datatype.
*/
import 'dart:io';
void main()
{
// Static
int num = 10;
double decimal = 10.0;
String char = 'a';
String word = "Hello";
bool state = true;

print("Number=$num\nPercentage=$decimal\nCharacter=$char\nWord=$word\nState=$state");
// Dynamic
stdout.write("Enter a string: ");
dynamic typeLess = stdin.readLineSync(); // Default is string

stdout.write("Enter an integer: ");
dynamic typeLess2 = int.parse(stdin.readLineSync()??'0'); // ?? is necessary to avoid null input. if input is null 0 is returned

stdout.write("Enter true/false: ");
dynamic typeLess3 = (stdin.readLineSync() ?? '');

print("String: $typeLess\nInteger: $typeLess2\nBoolean: $typeLess3");

// Const and final
// Const value has to be given while declaring
const noChange=20;
const int noChange2=20;
print("Enter a value for final noChange3:");
final noChange3 = int.parse(stdin.readLineSync() ?? '0');
print("Enter a value for final noChange4:");
final int noChange4 = int.parse(stdin.readLineSync() ?? '0');

print("Const noChange: $noChange");
print("Const noChange2: $noChange2");
print("Final noChange3: $noChange3");
print("Final noChange4: $noChange4");
}