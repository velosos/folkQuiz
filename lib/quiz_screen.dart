import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int answer = 0;

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
                  'Pergunta', 
                  style: 
                  TextStyle(fontSize: 18),
                ),
              ],
          ),
        ),
        Expanded(
          child:ListView(
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
                    offset: Offset(1, 3)
                   ),
                  ],
                ),
                child: RadioListTile(
                  value: 1, 
                  groupValue: answer, 
                  title: Text('resposta um'),
                  onChanged: (int value){
                    setState(() {
                      answer = value;
                    });
                    answer = value;
                  }),
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
