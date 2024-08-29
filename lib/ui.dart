import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/screen.dart';

class Ui extends StatefulWidget {
  const Ui({super.key});
  @override
  State<Ui> createState() {
    return _UiState();
  }
}

class _UiState extends State<Ui> {
  // Widget whichScreen = const Screen(switchScreen);
  // Widget? whichScreen;
  List<String> selectedAnswer = [];
  var whichScreen = 'start_screen';
  // @override
  // void initState() {
  //   whichScreen = Screen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(
      () {
        whichScreen = 'question_screen';
      },
    );
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 59, 2, 116),
            Color.fromARGB(255, 71, 2, 139)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: whichScreen == 'start_screen'
              ? Screen(switchScreen)
              : Question(onSelectedAnswer: chooseAnswer)),
    );
  }
}
