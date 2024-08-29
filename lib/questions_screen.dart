import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  const Question({super.key, required this.onSelectedAnswer});
  final void Function(String answer) onSelectedAnswer;
  @override
  State<Question> createState() {
    return _Question();
  }
}

class _Question extends State<Question> {
  var curQuesIndex = 0;
  void changeQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      curQuesIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final curQuestion = questions[curQuesIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              curQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...curQuestion.shuffle().map(
                  (option) => Button(
                    option,
                    () {
                      changeQuestion(option);
                    },
                  ),
                ),
            // Button(curQuestion.qA[0], () {}),
            // Button(curQuestion.qA[1], () {}),
            // Button(curQuestion.qA[2], () {}),
            // Button(curQuestion.qA[3], () {}),
          ],
        ),
      ),
    );
  }
}
