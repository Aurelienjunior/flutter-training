import 'dart:io';

void main() {
  double? numberOne;
  while (numberOne == null) {
    print('Enter a value');
    var value = stdin.readLineSync();
    numberOne = double.tryParse(value ?? '');
  }

  var operator;
  while (operator != '+' &&
      operator != '-' &&
      operator != '*' &&
      operator != '/') {
    print('Enter an operator');
    operator = stdin.readLineSync();
  }

  double? numberTwo;
  while (numberTwo == null) {
    print('Enter a value');
    var value = stdin.readLineSync();
    numberTwo = double.tryParse(value ?? '');
  }

  var result;
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
      result = numberOne / numberTwo;
      break;

    default:
  }
  print('$numberOne $operator $numberTwo is equal to $result ');
}

String luck(){
return 'Junior';
}