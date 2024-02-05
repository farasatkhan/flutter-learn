import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((summary) {
            return Row(
              children: [
                Text(
                  ((summary['question_index'] as int) + 1).toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      summary['question'].toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      summary['answer'].toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      summary['user_answer'].toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ))
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
