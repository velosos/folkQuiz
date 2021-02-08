import 'package:dio/dio.dart';

class Question {
  String questionText;
  String option1;
  String option2;
  String option3;
  String option4;
  int answer;

  Question(this.questionText, this.option1, this.option2, this.option3,
      this.option4, this.answer);

  static List<Question> getQuestionsList() {
    List<Question> questions = [];

    questions.add(Question(
      'O que é Flutter',
      'Um novo smartphone da google',
      'Um novo carro da Tesla',
      'Um SDK de desenvolvimento multiplataformas',
      'Um instrumento musical ',
      3,
    ));

    questions.add(Question(
      'Qual a linguagem de programação do Flutter',
      'Dart',
      'Java',
      'Swift',
      'cobol ',
      1,
    ));

    return questions;
  }
}
