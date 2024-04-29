import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter App",
              key: ValueKey('counter_app_title'),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              _counter.toString(),
              key: ValueKey('counter_value'),
              style: const TextStyle(color: Colors.white, fontSize: 200),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  key: ValueKey('reset_button'),
                  onPressed: () {
                    _resetCounter();
                  },
                  child: const Icon(Icons.restore),
                ),
                ElevatedButton(
                  key: ValueKey('increment_button'),
                  onPressed: () {
                    _incrementCounter();
                  },
                  child: const Icon(Icons.add),
                ),
                ElevatedButton(
                  key: ValueKey('decrement_button'),
                  onPressed: () {
                    _decrementCounter();
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
