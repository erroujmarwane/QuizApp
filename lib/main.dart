import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexQuestion = 0;
  int result =0;
   List<Map<String, Object>> questions = [
    {
      "Questions": "What's your fav Color?",
      "Answers": [
        {"Answer": "Red", "Score": 0},
        {"Answer": "Blue", "Score": 40},
        {"Answer": "Green", "Score": 70},
        {"Answer": "Black", "Score": 100},
      ]
    },
    {
      "Questions": "What's your fav Animal?",
      "Answers": [
        {"Answer": "Dogs", "Score": 90},
        {"Answer": "Cats", "Score": 90},
        {"Answer": "Birds", "Score": 70},
        {"Answer": "Crocodiles", "Score": 0},
      ]
    },
    {
      "Questions": "What's your fav Season?",
      "Answers": [
        {"Answer": "Summer", "Score": 70},
        {"Answer": "Spring", "Score": 90},
        {"Answer": "Autumn", "Score": 50},
        {"Answer": "Winter", "Score": 0},
      ]
    },
    {
      "Questions": "What's your fav Serie?",
      "Answers": [
        {"Answer": "Game of Thrones", "Score": 70},
        {"Answer": "Vikings", "Score": 80},
        {"Answer": "Peaky Blinders", "Score": 90},
        {"Answer": "Breaking Bad", "Score": 100},
      ]
    }
  ];
  void answered(int score) {
    setState(() {
      indexQuestion++;
    });
    result= result + score;
  }
  void reset(){
    setState(() {
      indexQuestion=0;
      result=0;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz"),
        ),
        body: Center(
          child: Column(
            children: [
            (questions.length> indexQuestion)
            ?Quiz(questions,answered,indexQuestion)
              :Result(result,reset)

            ],
          ),
        ),
      ),
    );
  }
}
