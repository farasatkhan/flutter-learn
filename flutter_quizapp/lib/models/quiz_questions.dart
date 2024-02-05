class QuizQuestions {
  const QuizQuestions(this.question, this.answers, this.correctAnswer);

  final String question;
  final String correctAnswer;
  final List<String> answers;

  List<String> get shuffledAnswers {
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
