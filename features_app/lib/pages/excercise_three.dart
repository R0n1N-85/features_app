import 'package:flutter/material.dart';

class ExcerciseThreeScreen extends StatefulWidget {
  const ExcerciseThreeScreen ({Key? key}) : super(key: key);

  @override
  _ExcerciseThreeScreen createState() => _ExcerciseThreeScreen();
}

class _ExcerciseThreeScreen extends State<ExcerciseThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feature nr 3"),
      ),
    );
  }
}
