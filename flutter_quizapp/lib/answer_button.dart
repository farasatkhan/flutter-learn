import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answer, required this.onTap});

  final String answer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: const ButtonStyle(
          padding: MaterialStatePropertyAll(
              EdgeInsets.only(top: 10, bottom: 10, left: 60, right: 60)),
          backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(255, 51, 2, 185)),
          foregroundColor: MaterialStatePropertyAll(Colors.white)),
      child: Text(
        answer,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
