import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen(
    this.quizfun, {
    super.key,
  });
  final void Function() quizfun;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(148, 255, 254, 254),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter The Fun Way!',
            style: TextStyle(
                color: Color.fromARGB(255, 205, 179, 225), fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: quizfun,
            icon: const Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text(
              'Start Now',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
