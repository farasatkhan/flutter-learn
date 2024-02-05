import 'package:flutter/material.dart';
import 'package:flutter_quizapp/data/questions.dart';
import 'package:flutter_quizapp/questions.dart';
import 'package:flutter_quizapp/quiz.dart';
import 'package:flutter_quizapp/result_screen.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  Widget? _currentScreen;
  final List<String> _choosedAnswers = [];

  void chooseAnswer(String answer) {
    _choosedAnswers.add(answer);

    if (_choosedAnswers.length == questions.length) {
      setState(() {
        _currentScreen = ResultsScreen(
          chosenAnswers: _choosedAnswers,
          resetScreen: resetScreen,
        );
      });
    }
  }

  void resetScreen() {
    setState(() {
      _currentScreen = Quiz(changeScreen);
      _choosedAnswers.clear();
    });
  }

  @override
  void initState() {
    super.initState();
    _currentScreen = Quiz(changeScreen);
  }

  void changeScreen() {
    setState(() {
      _currentScreen = QuestionsScreen(
        onSelectedAnswer: chooseAnswer,
      );
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
      child: _currentScreen,
    );
  }
}
