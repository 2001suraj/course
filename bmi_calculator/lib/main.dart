import 'package:bmi_calculator/provider/age_provider.dart';
import 'package:bmi_calculator/provider/change_color_provider.dart';
import 'package:bmi_calculator/provider/height_provider.dart';
import 'package:bmi_calculator/provider/weight_provider.dart';
import 'package:bmi_calculator/view/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
   runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return MultiProvider(
       providers: [
         ChangeNotifierProvider(create: (_)=>HeightProvider(),),
         ChangeNotifierProvider(create: (_)=>WeightProvider(),),
         ChangeNotifierProvider(create: (_)=>AgeProvider(),),
         ChangeNotifierProvider(create: (_)=>ColorProvider(),),

         

         
       ],
          
     child: MaterialApp(
         title: ' BMI Calculator',
          debugShowCheckedModeBanner:  false,
          theme: ThemeData.dark(),
          home: Mainpage()
       ),
     );
    
  }
}
 