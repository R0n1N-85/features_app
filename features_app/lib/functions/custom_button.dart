import 'package:flutter/material.dart';

button(String name, Function() clickButton) => Expanded(
        child: Container(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: clickButton,
        child: Text(
          name,
          maxLines: 1,
          style: const TextStyle(fontSize: 10),
        ),
      ),
    ));
