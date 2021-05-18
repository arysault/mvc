import 'package:mvc_project/models/counter_model.dart';

class CounterController {
  final model = Counter();

  String getCounter() => model.counter.toString();

  void incrementCounter() => model.modifierCounter(1, (_add));

  void decreaseCounter() => model.modifierCounter(1, (_sub));

  int _add(int n1, int n2) => n1 + n2;

  int _sub(int n1, int n2) => n1 - n2;
}
