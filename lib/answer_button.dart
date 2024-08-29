import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(this.bText, this.tap, {super.key});
  final String bText;
  final void Function() tap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: tap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          backgroundColor: const Color.fromARGB(255, 102, 141, 196),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: Text(
        bText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
