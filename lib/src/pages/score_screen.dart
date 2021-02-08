import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  int result;
  int maximum;

  ScoreScreen({Key key, @required this.result, @required this.maximum})
      : super(key: key);

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
          Expanded(
              child: Column(
            children: [
              SizedBox(
                height: 113,
              ),
              Text(
                'Você acertou: ',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Text(
                    '$result',
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w800,
                      color: Color(0xffDA0175),
                    ),
                  ),
                  Text(
                    '/ $maximum',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          )),
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
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Text(
                  'Jogar Novamente',
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
