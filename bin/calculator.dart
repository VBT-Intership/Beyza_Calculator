import 'dart:io';

//welcoming and to do
main() {
  print("Welcome to the Beyza's  Calculator with Dart\n");

  print("Please enter the two values you want..");

  double firstValue = double.parse(stdin.readLineSync());
  double secondValue = double.parse(stdin.readLineSync());
  operation(firstValue, secondValue);
}

//choosing and conditioning
void operation(firstValue, secondValue) {
  print("Please enter the operation..");
  double result;
  print("1-Addition/t 2-Subtraction/t3-Multiply/t4-Division");
  int operate = int.parse(stdin.readLineSync());
  if (operate == 1) {
    result = add(firstValue, secondValue);
  } else if (operate == 2) {
    result = substract(firstValue, secondValue);
  } else if (operate == 3) {
    result = multiply(firstValue, secondValue);
  } else if (operate == 4) {
    result = division(firstValue, secondValue);
  } else {
    print("Please enter the operation..");
  }
  print(result);
}

// operating
double add(double firstValue, double secondValue) {
  return firstValue + secondValue;
}

double substract(double firstValue, double secondValue) {
  return firstValue - secondValue;
}

double multiply(double firstValue, double secondValue) {
  return firstValue * secondValue;
}

double division(double firstValue, double secondValue) {
  return firstValue / secondValue;
}
