void main() {
  final greeting = greet(age: 12);
  print(greeting);
}

String greet({String? name, required int age}) {
  return " Hi, my name is $name and I am $age ";
}
