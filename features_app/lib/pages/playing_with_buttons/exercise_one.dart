import 'package:flutter/material.dart';

class ExerciseOneScreen extends StatefulWidget {
  const ExerciseOneScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ExerciseOneScreenState createState() => _ExerciseOneScreenState();
}

class _ExerciseOneScreenState extends State<ExerciseOneScreen> {
  int _counter = 0;

  void _incrementNumber() {
    setState(() {
      _counter++;
    });
  }

  void _decrementNumber() {
    setState(() {
      _counter--;
    });
  }

  void _resetNumber() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Just some App test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Please choose from below options',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
            Text(
              key: const Key('counterNumber'),
              '$_counter',
              style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 40),
            ),
            // ignore: unnecessary_new
            new Container(
              // ignore: unnecessary_new
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    key: const Key('plusButton'),
                    onPressed: _incrementNumber,
                    tooltip: 'Increment',
                    child: const Icon(Icons.arrow_circle_up),
                  ),
                  FloatingActionButton(
                    key: const Key('minusButton'),
                    onPressed: _decrementNumber,
                    tooltip: 'Decrement',
                    child: const Icon(Icons.arrow_circle_down),
                  ),
                  FloatingActionButton(
                    key: const Key('resetButton'),
                    onPressed: _resetNumber,
                    tooltip: 'Reset the count',
                    child: const Icon(Icons.reset_tv),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
