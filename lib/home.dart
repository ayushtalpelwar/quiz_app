import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage(this.startQuiz,{super.key});
  
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/34.jpg',
            width: 200,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Get Ready For Flutter Quiz!!",
            style: TextStyle(
                fontSize: 25, color: Color.fromARGB(255, 232, 251, 250)),
          ),
          SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: Text(
              "Start Quiz",
            ),
          ),
        ],
      ),
    );
  }
}
