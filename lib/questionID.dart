import 'package:flutter/material.dart';

class QuestionID extends StatelessWidget {
  const QuestionID({
    super.key,
    required this.questionIntex,
    required this.isCorrectAnser,
  });

  final int questionIntex;
  final bool isCorrectAnser;
  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIntex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnser ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.brown,
        ),
      ),
    );
  }
}
