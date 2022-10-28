import 'package:flutter/material.dart';

class ExcerciseThreeScreen extends StatefulWidget {
  const ExcerciseThreeScreen({Key? key}) : super(key: key);

  @override
  State<ExcerciseThreeScreen> createState() => _ExcerciseThreeScreen();
}

class _ExcerciseThreeScreen extends State<ExcerciseThreeScreen> {
  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feature nr 3"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Container(
              child: const Text(
                'Please fill in the below details',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20, 100, 0),
              child: const TextField(
                key: Key('firstName'),
                decoration: InputDecoration(
                  labelText: 'First name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20, 100, 0),
              child: const TextField(
                key: Key('lastName'),
                decoration: InputDecoration(
                  labelText: 'Last name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(80, 10, 100, 10),
              child: ElevatedButton(
                child: const Text('Search'),
                onPressed: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
