import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final  questions = const [
    {'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },

    {'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Horse', 'Dog'],
    },

    {'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Arturito', 'Rasiak', 'Tadzio', 'Norek'],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {

    
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < questions.length){
        print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
          backgroundColor: Colors.black,
        ),
        body: _questionIndex < questions.length ? Column(       // x ? y : z    jesli x jest true to zrob Column, jesli nie to Center
          children: [
            Question(
              questions[_questionIndex] ['questionText']
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ) : Center(child: Text('You did it'),) ,
      ),
    );
  }
}
