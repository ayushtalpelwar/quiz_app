import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key,required this.chosenAnswers});
  final List<String> chosenAnswers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          children: [
            Text("You answered X out Y Questions Correctly!!"),
            SizedBox(height: 30),
            Text("Bla Bla Bla"),
            SizedBox(height: 30),
            TextButton(
              child: Text("Restart Quiz"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
