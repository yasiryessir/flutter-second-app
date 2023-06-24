import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: Colors.white,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Learn how to code in Flutter!",
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 85, 20, 85),
                backgroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Start Quiz!",
              style: TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}
