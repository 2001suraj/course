// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:quiz/utils/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Icon> icons = [];

  int questionNumber = 0;


  @override
  Widget build(BuildContext context) {
    Object nextQuestion() {
      if ( questionNumber < QuizzQuestion.question.length -1) {
        questionNumber++;
        return SizedBox();
      } else {
        return 
    
        showDialog(
          barrierDismissible: false,
            builder: (BuildContext context) {
              return     AlertDialog(
              title: Text("Finished"),  
    content: TextButton(onPressed: (){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
    },child:Text('restart'))  
        );
            },
            context: context);
      }
    }

    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Quizz App'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //question

              Expanded(
                flex: 5,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(QuizzQuestion.question[questionNumber],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                ),
              ),

              // true
              Expanded(
                flex: 1,
                child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          bool correctAnswer =
                              QuizzQuestion.answer[questionNumber];
                          if (correctAnswer == true) {
                            icons.add(Icon(Icons.check, color: Colors.green));
                          } else {
                            icons.add(Icon(Icons.close, color: Colors.red));
                          }
                          nextQuestion();
                        });
                      },
                      child: Text('True'),
                      color: Colors.green,
                    )),
              ),

              // false
              Expanded(
                flex: 1,
                child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          bool correctAnswer =
                              QuizzQuestion.answer[questionNumber];
                          if (correctAnswer == false) {
                            icons.add(Icon(Icons.check, color: Colors.green));
                          } else {
                            icons.add(Icon(Icons.close, color: Colors.red));
                          }
                          nextQuestion();
                        });
                      },
                      child: Text('False'),
                      color: Colors.red,
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: icons,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
