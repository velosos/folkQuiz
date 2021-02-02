import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 167.0),
          Image(image: AssetImage('lib/assets/logo.png'),
          ),
          SizedBox(height: 24.0),
          Text('FolkQuiz', 
            style: TextStyle(
              fontSize: 32, 
              fontWeight: FontWeight.w800 
              ),
          ),
          SizedBox(
            height: 88.0,
            ),
          FlatButton(
            onPressed: () {
            print('Começar');
          }, child: Text(
            'Começar', 
            style: TextStyle(
              fontSize: 14, 
              fontWeight: FontWeight.w600,
              ),
            ),
          color: Color(0xffDA0175),
          textColor: Color(0xffF7F7F7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20,
              )
            ),
            padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
          ),
        ],
      ),
    );
  }
}