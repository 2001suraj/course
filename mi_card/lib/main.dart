// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mi card',
        theme: ThemeData(),
        home: BodyScreen());
  }
}

class BodyScreen extends StatelessWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
           width: double.infinity,
           height: 770,
          child: Container(
            color: Colors.teal,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //image
          
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/my.jpg'),
                ),
                SizedBox(height: 20),
          
                //name
                Text(
                  'Suraj karki',
                  style: GoogleFonts.lobster(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                ),
                SizedBox(height: 20),
          //status
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 1.9),
                ),
          
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Divider(
                      color: Colors.white,
                    )),
                SizedBox(height: 20),
          
          //phone numer
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 18),
                  width: double.infinity,
                   height: 50,
                    color:Colors.white,
                  child: Row(
                    children: [
                       SizedBox(width: 10),
          
                      Icon(Icons.phone,color:Colors.teal),
                       SizedBox(width: 20),
                       Text('+ 977 - 9861853947')
                    ],
                  ),
                ),
            
                SizedBox(height: 20),
          
          //email address
           Container(
                  margin: EdgeInsets.symmetric(horizontal: 18),
                  width: double.infinity,
                   height: 50,
                    color:Colors.white,
                  child: Row(
                    children: [
                       SizedBox(width: 10),
          
                      Icon(Icons.email,color:Colors.teal),
                       SizedBox(width: 20),
                       Text(' ksoorajkarki@gmail.com')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
