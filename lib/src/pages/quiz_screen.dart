import 'package:flutter/material.dart';
import 'package:folk_quiz/question.dart';
import 'package:folk_quiz/src/pages/score_screen.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int answer = 0;
  int score = 0;
  int index = 0;
  List<Question> questionList = Question.getQuestionsList();

  void verifyResponse() {
    if (answer == questionList[index].answer) {
      score = score + 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xff374952),
        title: Image(
          image: AssetImage('lib/assets/logo.png'),
          width: 45.0,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(32, 56, 32, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PERGUNTA 1: ',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  questionList[index].questionText,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3)),
                    ],
                  ),
                  child: RadioListTile(
                      value: 1,
                      groupValue: answer,
                      title: Text(
                        questionList[index].option1,
                      ),
                      onChanged: (int value) {
                        setState(() {
                          answer = value;
                        });
                        answer = value;
                      }),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3)),
                    ],
                  ),
                  child: RadioListTile(
                      value: 2,
                      groupValue: answer,
                      title: Text(
                        questionList[0].option2,
                      ),
                      onChanged: (int value) {
                        setState(() {
                          answer = value;
                        });
                        answer = value;
                      }),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3)),
                    ],
                  ),
                  child: RadioListTile(
                      value: 3,
                      groupValue: answer,
                      title: Text(
                        questionList[index].option3,
                      ),
                      onChanged: (int value) {
                        setState(() {
                          answer = value;
                        });
                        answer = value;
                      }),
                ),
              ],
            ),
          ),
          Container(
            height: 87,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, -1),
              )
            ]),
            child: Center(
              child: FlatButton(
                onPressed: () {
                  verifyResponse();
                  if (index < questionList.length - 1) {
                    setState(() {
                      index = index + 1;
                      answer = 0;
                    });
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScoreScreen(
                                maximum: questionList.length,
                                result: score,
                              )),
                    );
                  }
                },
                child: Text(
                  'Responder',
                  style: TextStyle(fontSize: 14),
                ),
                color: Color(0xffDA0175),
                textColor: Color(0XffF7F7F7),
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
