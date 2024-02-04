import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var imageState = 'assets/images/dice-1.png';

  void rollDice() {
    final number = random.nextInt(6) + 1;
    setState(() => imageState = 'assets/images/dice-$number.png');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imageState),
        const SizedBox(
          height: 50,
        ),
        TextButton(
            onPressed: rollDice,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              foregroundColor: MaterialStateProperty.all(Colors.black),
              textStyle:
                  MaterialStateProperty.all(const TextStyle(fontSize: 18)),
            ),
            child: const Text('Roll the dice'))
      ],
    ));
  }
}
