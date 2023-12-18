import 'package:flutter/material.dart';
import 'package:quiz/questionsScreen.dart';
import 'package:quiz/startScreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.orange,
              Color.fromARGB(255, 82, 52, 220),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
