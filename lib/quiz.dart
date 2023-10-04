import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';
import 'package:quiz_app/model/quiz_questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'home';
  List<String> selectedAnswers = [];
  // @override
  // void initState() {
  //   activeScreen = HomePage(switchScreen);
  //   super.initState();
  // }

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == question.length) {
      setState(() {
        activeScreen = 'result_screen';
        selectedAnswers = [];
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = "question_screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomePage(switchScreen);

    if (activeScreen == "question_screen") {
      screenWidget = Question(onSelectedAnswers: chooseAnswers);
    }

    if (activeScreen == "result_screen") {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 44, 230, 255),
                Color.fromARGB(255, 6, 54, 167)
              ],
            ),
          ),
          child: screenWidget,
          // activeScreen == 1
          //     ? HomePage(switchScreen)
          //     : Question(
          //         onSelectedAnswers: chooseAnswers,
          //       ),
        ),
      ),
    );
  }
}
