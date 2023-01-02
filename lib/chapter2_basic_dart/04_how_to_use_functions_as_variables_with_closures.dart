/// from Page 58 to 60

void main() {
  consumeClosure();
}

void callbackExample(void callback(String value)) {
  callback('Hello Callback');
}

/// Watch This
typedef NumberGetter = int Function();

int powerOfTwo(NumberGetter getter) {
  return getter() * getter();
}

void consumeClosure() {
  final getSix = () => 6;
  final getThem = powerOfTwo(getSix);
  print(getThem);

  callbackExample((value) {
    print(value);
  });
}
