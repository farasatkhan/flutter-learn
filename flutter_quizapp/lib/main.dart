import 'package:flutter/material.dart';
import 'package:flutter_quizapp/gradient_container.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: GradientContainer(),
    ));
  }
}
