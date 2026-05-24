import 'package:flutter/material.dart';
import 'data/questions.dart';
import 'questions_summary.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key,
    required this.chosenAnswers
  });

  final List<String>chosenAnswers;

  List <Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];

    for(var i=0; i<chosenAnswers.length; i++){
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'user_answer': chosenAnswers[i],
        'correct_answer': questions[i].answers[0],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children:   [
            const Text('u answered x out y questions correctly'),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: (){},
              child: const Text('Restart Quiz!!!'),
            )
          ],
        ),
      ),
    );
  }
}