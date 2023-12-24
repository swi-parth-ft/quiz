import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(void Function() this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(99, 255, 255, 255),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
          ),
          Text(
            'Let us check out about the flutter',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(156, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
          ),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.orange,
              textStyle: const TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
