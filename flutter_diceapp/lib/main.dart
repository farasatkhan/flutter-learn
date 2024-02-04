import 'package:flutter/material.dart';
import 'package:flutter_diceapp/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [Colors.green, Colors.red],
        ),
      ),
    ),
  );
}
