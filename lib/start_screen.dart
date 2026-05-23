import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Stateless means it doesn't change cuz we don't need any changing data
class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context){  //context means the current state of the app
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, //MainAxisSize.min means the minimum size possible for the column
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255), //for opacity
          ),

          const SizedBox(height: 80),

          Text('Learn Flutter in a fun way',
            style: GoogleFonts.jetBrainsMono(
              color: Colors.white,
              fontSize: 24,
            ),
          ),

          const SizedBox(height: 30),


          //outlinedbutton = button with border
          //OutlinedButton.icon = button with icon, when using this
          //we need to use icon and label properties instead of child
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ),
      ],),
    );
  }
}