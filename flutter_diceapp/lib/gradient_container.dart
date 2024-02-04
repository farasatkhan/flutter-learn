import 'package:flutter/material.dart';
import 'package:flutter_diceapp/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: colors,
      )),
      child: const DiceRoller(),
    );
  }
}
