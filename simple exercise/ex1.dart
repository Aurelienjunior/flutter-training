void main() {
  String describePerson({required String name, int? age, String? hobby}) {
    String result = 'This is $name.';
    if (age != null) result += ' They are $age years old.';
    if (hobby != null) result += ' They like $hobby.';
    return result;
  }

  // Call with all parameters.
  print(describePerson(name: 'David', age: 28, hobby: 'swimming'));

  // Call with only name and age.
  print(describePerson(name: 'Ella', age: 35));

  // Call with only the name.
  print(describePerson(name: 'Liam'));
}
