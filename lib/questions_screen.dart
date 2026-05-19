import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {

    final currentQuestion = questions[0];
     return SizedBox(
       width: double.infinity,  //means as much as width as possible
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,

         children: [
         Text(
             currentQuestion.text,
             style: const TextStyle(
             color: Colors.white
             )
         ),

         const SizedBox(height: 30),


           //... simply means it will take all the values from the list and put it in the column
           //map allows us to convert, to transform, u could say, the values in a list to other values
           ...currentQuestion.answers.map((answer){
             return AnswerButton(answerText: answer, onSelected: (){});
           })
       ],
       ),
     );
  }
}

