class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String>getShuffledAnswers() {
    final shuffledList =  List.of(answers);   //first we create a copy of the answer
    shuffledList.shuffle();   //then, we shuffle the copy
    return shuffledList;    //after that we return the shuffled list
  }
}

