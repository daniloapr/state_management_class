import 'package:flutter/material.dart';
import 'package:statemanagementsclass/scenes/counter/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final _controller = CounterController();

  @override
  Widget build(BuildContext context) {
    print('rebuild screen');
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter:',
            ),
            StreamBuilder<int>(
              stream: _controller.counter,
              builder: (context, snapshot) {
                final counter = snapshot.data ?? 0;
                return Text(
                  counter.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              }
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _controller.incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _controller.decrementCounter,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
