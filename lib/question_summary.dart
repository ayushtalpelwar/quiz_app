import 'package:flutter/material.dart';
// import 'package:quiz_app/model/quiz_questions.dart';
// import 'package:quiz_app/result_screen.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summary;

  const QuestionSummary(this.summary, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map((data) {
            return Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 109, 249, 249),
                  ),
                  child: Text(
                    ((data["question_index"] as int) + 1).toString(),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 151, 83, 245),
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 17, 109, 239),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
