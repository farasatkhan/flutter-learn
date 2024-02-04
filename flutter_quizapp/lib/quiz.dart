import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  const Quiz(this.changeScreen, {super.key});

  final void Function() changeScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            height: 300,
            color: const Color.fromARGB(50, 255, 255, 255),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontStyle: FontStyle.normal),
          ),
          const SizedBox(
            height: 60,
          ),
          OutlinedButton.icon(
            onPressed: changeScreen,
            style: const ButtonStyle(
              padding: MaterialStatePropertyAll(
                  EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30)),
              foregroundColor: MaterialStatePropertyAll(Colors.white),
            ),
            icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
