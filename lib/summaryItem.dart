import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/questionID.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final isCorrectAnswer = itemData['userAnswer'] == itemData['correctAnswer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionID(
            questionIntex: itemData['questionIndex'] as int,
            isCorrectAnser: isCorrectAnswer),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                itemData['userAnswer'] as String,
                style: const TextStyle(color: Colors.pink),
              ),
              Text(
                itemData['correctAnswer'] as String,
                style: const TextStyle(color: Colors.green),
              ),
            ],
          ),
        )
      ],
    );
  }
}
