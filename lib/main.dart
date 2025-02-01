import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  final Color color1 = Color.fromARGB(255, 25, 119, 225);
  final Color color2 = Color.fromARGB(255, 72, 19, 96);

  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(color1, color2),
      ),
    ),
  );
}
