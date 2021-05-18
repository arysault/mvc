class Counter {
  int _counter = 0;

  int get counter => _counter;

  void modifierCounter(int valor, Function(int, int) operation) =>
      _counter = operation(valor, _counter);
}
