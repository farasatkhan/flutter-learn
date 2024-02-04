import 'package:flutter/material.dart';
import 'package:flutter_quizapp/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          "The questions will appear here!",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        const SizedBox(
          height: 30,
        ),
        AnswerButton(answer: "Answer 1", onTap: () {}),
        const SizedBox(height: 20),
        AnswerButton(answer: "Answer 2", onTap: () {}),
        const SizedBox(height: 20),
        AnswerButton(answer: "Answer 3", onTap: () {}),
        const SizedBox(height: 20),
        AnswerButton(answer: "Answer 4", onTap: () {}),
      ]),
    );
  }
}
