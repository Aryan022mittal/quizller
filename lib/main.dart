import 'package:flutter/material.dart';
import 'questions.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizller());
class Quizller extends StatelessWidget {
  const Quizller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeper =[];

  //List<String> question =[
    //'you can lead a cow downstairs not upstairs',
    //'approximately one quarter of bones are in human feet',
    //'smug\'s blood is red',
  //];

  int questionnumber = 0;

  //List<bool> answers=[
    //false,
    //true,
    //true,
  //];
  //Questions q1 = Questions(q:'you can lead a cow downstairs not upstairs',a:false);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.questionbank[questionnumber].questionsText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                bool correctAnswer=quizBrain.questionbank[questionnumber].questionsAnswer;

                if(correctAnswer ==true){
                  print('user got right');
                }
                else{
                  print('user got wrong');
                }
                setState(() {
                  questionnumber++;
                });

              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(

              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                bool correctAnswer=quizBrain.questionbank[questionnumber].questionsAnswer;

                if(correctAnswer ==false){
                  print('user got right');
                }
                else{
                  print('user got wrong');
                }
                setState(() {
                  questionnumber++;
                });


              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
        Row(
          children: scoreKeper,
        ),
      ],
    );
  }
}








