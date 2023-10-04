import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answertext;
  final void Function() onTap;

  Answer({super.key, required this.answertext, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 10, 21, 142),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: onTap,
      child: Text(answertext,textAlign:TextAlign.center),
    );
  }
}
