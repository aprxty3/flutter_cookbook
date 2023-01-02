/// from Page 54 to 57

void main() {
  functionPlayground();
}

void functionPlayground() {
  classicalFunctions();
  print('-------------');
  print('-------------');
  optionalParameters();
}

void printMyName(String name) {
  print('Hello $name');
}

int add(int a, int b) {
  return a + b;
}

int factorial(int number) {
  if (number <= 0) {
    return 1;
  }
  return number * factorial(number - 1);
}

/// WATCH THIS
void classicalFunctions() {
  printMyName('Anna');
  printMyName('Michael');
  final sum = add(5, 3);
  print(sum);
  print('10 Factorial is ${factorial(10)}');
}

void unnamed([String name, int age]) {
  final actualName = name ?? 'Unknown';
  final actualAge = age ?? 0;
  print('$actualName is $actualAge years old.');
}

void named({String greeting, String name}) {
  final actualGreeting = greeting ?? 'Hello';
  final actualName = name ?? 'Mystery Person';
  print('$actualGreeting, $actualName!');
}

String duplicate(String name, {int times = 1}) {
  String merged = '';
  for (int i = 0; i < times; i++) {
    merged += name;
    if (i != times - 1) {
      merged += ' ';
    }
  }
  return merged;
}

/// WATCH THIS
/// NOTE : Difference between unnamed & named are: named use Key Value to implement the function
void optionalParameters() {
  unnamed('Huxley', 3);
  unnamed();
  // Notice how named parameters can be in any order
  named(greeting: 'Greetings and Salutations');
  named(name: 'Sonia');
  named(name: 'Alex', greeting: 'Bonjour');
  print(duplicate('Mikey', times: 3));
}
