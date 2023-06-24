import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.text, required this.onTap});

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
            foregroundColor: const Color.fromARGB(255, 70, 25, 45),
            backgroundColor: const Color.fromARGB(255, 255, 150, 250),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          text,
          textAlign: TextAlign.center,
        ));
  }
}
