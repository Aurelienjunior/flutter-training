import 'dart:io';

void main() {
  // Ask the user to enter the first number
  print('Enter the first number:');
  var valueOne = stdin.readLineSync();

  // Convert the input to a double (or int if you prefer)
  double? numberOne = double.tryParse(valueOne ?? '');
  if (numberOne == null) {
    print('Invalid number entered for the first value.');
    return;
  }

  // Ask the user to enter the operator
  print('Enter the operator (+, -, *, /):');
  String? operator = stdin.readLineSync();

  if (operator != '+' && operator != '-' && operator != '*' && operator != '/') {
    print('Invalid operator entered.');
    return;
  }

  // Ask the user to enter the second number
  print('Enter the second number:');
  var valueTwo = stdin.readLineSync();

  // Convert the input to a double (or int)
  double? numberTwo = double.tryParse(valueTwo ?? '');
  if (numberTwo == null) {
    print('Invalid number entered for the second value.');
    return;
  }

  // Perform the calculation based on the operator
  double? result;
  switch (operator) {
    case '+':
      result = numberOne + numberTwo;
      break;
    case '-':
      result = numberOne - numberTwo;
      break;
    case '*':
      result = numberOne * numberTwo;
      break;
    case '/':
      // Check for division by zero
      if (numberTwo != 0) {
        result = numberOne / numberTwo;
      } else {
        print('Error: Cannot divide by zero.');
        return;
      }
      break;
  }

  // Display the result
  print('The result of $numberOne $operator $numberTwo is: $result');
}
