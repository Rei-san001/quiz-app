import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton({
      super.key,
      required this.answerText,
      required this.onSelected,

      }); /*
      required = mandatory
      Without it, the value can be skipped
      Flutter uses it to prevent mistakes
      */

  //properties
  final String answerText;
  final void Function() onSelected;

  //methods
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      onPressed: onSelected,
      style: ElevatedButton.styleFrom(

        padding: const EdgeInsets.symmetric(
            horizontal: 40, vertical: 10
        ),
        backgroundColor: const Color.fromARGB(255, 18, 43, 100),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40), //radius = 40 px
        ),
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}