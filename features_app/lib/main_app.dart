import 'package:features_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Features App',
      home: const LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}
