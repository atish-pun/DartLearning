import 'dart:io';

void main() {
  try {
    stdout.write("Enter First number: ");
    int firstNum = int.parse(stdin.readLineSync().toString());
    stdout.write("Enter Second number: ");
    int secondNum = int.parse(stdin.readLineSync().toString());
    var cal = Calculator();
    //Sum = return type
    var sum = cal.sum(a: firstNum, b: secondNum);
    print("Sum: " + sum.toString());
    //Other operation = non return type
    cal.sub(a: firstNum, b: secondNum);
    cal.mult(a: firstNum, b: secondNum);
    cal.div(a: firstNum, b: secondNum);
  } on FormatException {
    print("Invlaid number format in input field");
  } catch (error) {
    print(error);
  }
}

class Calculator {
  late int num1;
  late int num2;

  int sum({a, b}) {
    this.num1 = a;
    this.num2 = b;
    return num1 + num2;
  }

  void sub({a, b}) {
    this.num1 = a;
    this.num2 = b;
    print("Substraction: ${num1 - num2}");
  }

  void mult({a, b}) {
    this.num1 = a;
    this.num2 = b;
    print("Multiplication: ${num1 * num2}");
  }

  void div({a, b}) {
    this.num1 = a;
    this.num2 = b;
    print("Division: ${num1 / num2}");
  }
}
