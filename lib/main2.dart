import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CounterApplication());

class CounterApplication extends StatelessWidget {
  const CounterApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Counter',
      home: CounterScreenState(),
    );
  }
}

class CounterScreenState extends StatefulWidget {
  const CounterScreenState({Key? key}) : super(key: key);

  @override
  CounterScreen createState() => CounterScreen();
}

class CounterScreen extends State<CounterScreenState> {
  late int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Counter'),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: _incrementCount,
          ),
          Text("$_count"),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: _decrementCount,
          )
        ],
      )),
    );
  }
}
