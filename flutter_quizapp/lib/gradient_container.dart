import 'package:flutter/material.dart';
import 'package:flutter_quizapp/questions.dart';
import 'package:flutter_quizapp/quiz.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  Widget? currentScreen;

  @override
  void initState() {
    super.initState();
    currentScreen = Quiz(changeScreen);
  }

  void changeScreen() {
    setState(() {
      currentScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromARGB(255, 180, 0, 224),
            Color.fromARGB(255, 92, 0, 153)
          ])),
      child: currentScreen,
    );
  }
}
