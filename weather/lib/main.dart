import 'package:flutter/material.dart';
import 'package:weather/view/screen/loading_screen/loading_screen.dart';
import 'package:weather/view/screen/location_screen/location_screen.dart'; 
 void  main(){
   runApp(MyApp());
 }
   class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
     return MaterialApp(
       title:'Weather app',
      theme: ThemeData(),
       home:
       LoadingScreen(),
      //  LocationScreen(),

     );
    
  }
}