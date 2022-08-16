import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner:  false,
      title: 'magie 8 ball',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var ball = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Ask me any thing"),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
           onTap: (){
          setState(() {
            ball = Random().nextInt(5)+1;
          });
           },
          child: Container(
             padding: EdgeInsets.all(20),
            child: Image(
              image: AssetImage(
                'assets/images/ball${ball}.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
