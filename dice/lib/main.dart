// ignore_for_file: prefer_const_constructors

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
      title: ' dice app',
      theme: ThemeData(),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
   var leftdice = 1;
   var rightdice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text('Dice'),
      ),
      body: Container(
        width: double.infinity,
        child: Center(
        
            child:Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                         setState(() {
                           leftdice = Random().nextInt(6) + 1;
                         });
                      },
                      child: Image(
                        image: AssetImage('assets/images/dice${leftdice}.png'),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                  Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell( 
                       onTap: (){
                         setState(() {
                           rightdice = Random().nextInt(6)+1;                           
                         });
                       },
                      child: Image(
                        image: AssetImage('assets/images/dice${rightdice}.png'),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          
        ),
      ),
    );
  }
}
