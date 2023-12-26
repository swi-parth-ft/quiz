import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questionSummary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnsers, required this.onRestart});

  final List<String> chosenAnsers;
  final void Function() onRestart;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> Summary = [];
    for (var i = 0; i < chosenAnsers.length; i++) {
      Summary.add(
        {
          'questionIndex': i,
          'question': questions[i].text,
          'correctAnswer': questions[i].answers[0],
          'userAnswer': chosenAnsers[i],
        },
      );
    }
    return Summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQueestions = summaryData.where((data) {
      return data['userAnswers'] == data['correctAnswer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQueestions out of $numTotalQuestions questions correctly',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
                onPressed: onRestart,
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                icon: const Icon(Icons.refresh),
                label: const Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}
