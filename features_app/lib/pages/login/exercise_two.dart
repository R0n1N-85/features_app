import 'package:flutter/material.dart';

class ExcerciseTwoScreen extends StatefulWidget {
  const ExcerciseTwoScreen({Key? key}) : super(key: key);

  @override
  State<ExcerciseTwoScreen> createState() => _ExcerciseTwoScreenState();
}

class _ExcerciseTwoScreenState extends State<ExcerciseTwoScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Loading Page"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(50),
                child: const Text(
                  'Welcome to Login App',
                  style: TextStyle(
                      color: Colors.blue,
                      // fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => const AlertDialog(
                        title: Text("Oops"),
                        content: Text(("Still need to be implemented")),
                      )),
              child: const Text(
                'Forgot Password',
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () => showDialog(
                      context: context,
                      // ignore: prefer_const_constructors
                      builder: (BuildContext context) => AlertDialog(
                            title: const Text('Oops'),
                            content: const Text('Login in is in development'),
                          ))),
            ),
            Row(
                // ignore: sort_child_properties_last
                children: <Widget>[
                  const Text(
                    'Does not have account?',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Hi there I\'m a pop up'),
                        content: const Text(
                            'This App was made for testing automation'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
          ])),
    );
  }
}
