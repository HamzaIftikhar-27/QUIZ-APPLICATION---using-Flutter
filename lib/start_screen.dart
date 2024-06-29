import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(178, 253, 253, 253),
          ),
          const SizedBox(height: 80),
          const Text(
            'Welcome to Quiz World ',
            style: TextStyle(
              color: const Color.fromARGB(255, 236, 231, 231),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_circle_right_outlined),
            label: const Text('Start'),
          )
        ],
      ),
    );
  }
}
