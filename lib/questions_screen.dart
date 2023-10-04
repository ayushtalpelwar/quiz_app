import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'model/quiz_questions.dart';

class Question extends StatefulWidget {
  const Question({super.key, required this.onSelectedAnswers});

  final void Function(String answer) onSelectedAnswers;
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var currentindex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswers(selectedAnswer);
    setState(() {
      currentindex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = question[currentindex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffeledAnswers().map(
              (answer) {
                return Answer(
                  answertext: answer,
                  onTap: () {
                    answerQuestion(answer);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
