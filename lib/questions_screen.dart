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
  var currentQuestionIndex = 0;

  answerQuestion(){

    setState(() {
      currentQuestionIndex++;
    });

  }



  @override
  Widget build(context) {

    final currentQuestion = questions[currentQuestionIndex];
     return SizedBox(
       width: double.infinity,  //means as much as width as possible
       child: Container(

         margin: const EdgeInsets.all(40),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.stretch,

           children: [
           Text(
               currentQuestion.text,
               style: const TextStyle(
               color: Colors.white
               ),
               textAlign: TextAlign.center,
           ),

           const SizedBox(height: 30),


             //... simply means it will take all the values from the list and put it in the column
             //map allows us to convert, to transform, u could say, the values in a list to other values
             ...currentQuestion.getShuffledAnswers().map((answer){
               return AnswerButton(answerText: answer, onSelected: answerQuestion);
             })
         ],
         ),
       ),
     );
  }
}

