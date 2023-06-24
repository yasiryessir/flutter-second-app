import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';

import 'package:second_app/question_screen.dart';
import 'package:second_app/results_screen.dart';
import 'package:second_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  var activeScreen = "start-screen";

  void switchScreen() {
    if (activeScreen != "start-screen") {
      return;
    }
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "results-screen";
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers.clear();
      activeScreen = "question-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == "question-screen") {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == "results-screen") {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.deepPurpleAccent, Colors.purple, Colors.pink],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: screenWidget,
      ),
    ));
  }
}
