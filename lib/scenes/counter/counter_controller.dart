import 'dart:async';

class CounterController {

  final _counterController = StreamController<int>();

  Stream<int> get counter => _counterController.stream;

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    _counterController.add(_counter);
  }

  void decrementCounter() {
    _counter--;
    _counterController.add(_counter);
  }
}
