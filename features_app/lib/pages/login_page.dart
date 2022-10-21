import 'package:features_app/pages/excercise_three.dart';
import 'package:features_app/pages/exercise_one.dart';
import 'package:features_app/pages/exercise_two.dart';
import 'package:flutter/material.dart';

import '../functions/custom_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const String _title = 'Just test';

  //definition of a button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 171, 200, 207),
      appBar: AppBar(
        title: const Text(_title),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: const Text(
                'Welcome to Ronin\'s features App',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              button('Counter App', () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ExerciseOneScreen(),
                ));
              }),
              button('Login page App', () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ExcerciseTwoScreen(),
                ));
              }),
              button("Feature Three", () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ExcerciseThreeScreen()));
              }),
            ],
          ),
        ],
      ),
    );
  }
}
