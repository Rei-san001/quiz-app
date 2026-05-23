import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  final List<String> selectedAnswers = [];
  //used Widget here to store any widget, that's why no var is used
  //activeScreen can also be nullable
  Widget? activeScreen; //we can store widget in a variable
  //? means it can be also null

  //another way to change the state is and in the child section that'd change too
  /*  var activeScreen = 'start-screen';
  void switchScreen(){
    setState(() {
      activeScreen = 'question-screen';
    });
  }
   */


  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
  }

  //we created this just to initialize the activeScreen first
  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  //created a method here
  void switchScreen(){
    setState(() {   //setState is used to update the UI
      activeScreen = QuestionsScreen(
        onAnswerSelected: chooseAnswer,
      );
    });
  }

  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF193446),
                Color(0xFF677986),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
          // another way to change state
          /* child: activeScreen == 'start-screen'
          * ? StartScreen(switchScreen)
          * : const QuestionsScreen(),
          * */
        ),
      ),
    );
  }
}


