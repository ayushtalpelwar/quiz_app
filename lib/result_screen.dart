import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers,required this.onRestart});
  final List<String> chosenAnswers;
  final void Function() onRestart;
  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          "question_index": i,
          "question": question[i].text,
          "correct_answer": question[i].options[0],
          "user_answer": chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summarydata = getSummary();
    final numTotalQuetions = question.length;
    final numCorrectQuestions = summarydata.where((data) {
      return data['correct_answer'] as String == data["user_answer"] as String;
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numTotalQuetions out $numCorrectQuestions Questions Correctly!!',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            QuestionSummary(getSummary()),
            SizedBox(height: 30),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
