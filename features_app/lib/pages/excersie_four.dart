import 'package:flutter/material.dart';

class ExcerciseFourScreen extends StatelessWidget {
  const ExcerciseFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playing with colors'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              alignment: Alignment.center,
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.amber,
              height: 150,
              width: 100,
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
