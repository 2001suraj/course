// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bmi_calculator/provider/age_provider.dart';
import 'package:bmi_calculator/provider/change_color_provider.dart';
import 'package:bmi_calculator/provider/height_provider.dart';
import 'package:bmi_calculator/provider/weight_provider.dart';
import 'package:bmi_calculator/utilities/colors.dart';
import 'package:bmi_calculator/view/base_widgets/build_button_expanded.dart';
import 'package:bmi_calculator/view/base_widgets/build_expanded.dart';
import 'package:bmi_calculator/view/screen/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HeightProvider heightProvider = Provider.of<HeightProvider>(context);
    WeightProvider weightProvider = Provider.of<WeightProvider>(context);
    AgeProvider ageProvider = Provider.of<AgeProvider>(context);
    ColorProvider colorProvider = Provider.of<ColorProvider>(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 630,
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                //row with gender

                Row(
                  children: [
                    // male

                    BuildExpanded(
                      tap: colorProvider.onchangemale,
                      icon: Icons.male,
                      text: 'Male',
                      colors: colorProvider.male,
                    ),

                    SizedBox(width: 30),
                    //female
                    BuildExpanded(
                      tap: colorProvider.onchangefemale,
                      icon: Icons.female,
                      text: 'Female',
                      colors: colorProvider.female,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // height container
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: activeColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    child: Column(
                      children: [
                        Text('Height'),
                        Text(heightProvider.height.toStringAsFixed(2) + 'cm'),
                        Slider(
                          onChanged: heightProvider.onchange,
                          value: heightProvider.height,
                          min: 45,
                          max: 200,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),

                //row with weight  and  age
                Row(
                  children: [
                    // weight
                    BuildBottomExpanded(
                      hero: '1',
                      hero1: '2',
                      number_text:
                          weightProvider.weight.toString(),
                      title_text: 'weight (kg)',
                      add: weightProvider.onchange_add,
                      less: weightProvider.onchange_less,
                    ),
                    SizedBox(width: 30),
                    //age
                    BuildBottomExpanded(
                      hero: '3',
                      hero1: '4',
                      number_text:
                          ageProvider.age.toString(),
                      title_text: 'Age',
                      add: ageProvider.onchange_add,
                      less: ageProvider.onchange_less,
                    ),
                  ],
                ),
                SizedBox(height: 20),

                //calculate button
                MaterialButton(
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    var bmi = weightProvider.weight / pow(heightProvider.height/100, 2);
                    var status = " ";
                    var  message ="";
                    MaterialColor color;
                    if (bmi < 18.5) {
                      //underweight
                      status = 'UnderWeight';
                      message = "A BMI of under 18.5 indicates that a person has insufficient weight, so they may need to put on some weight. ";
                      color =Colors.orange;
                    } else if (bmi > 18.5 && bmi < 24.9) {
                      //normal
                      status = 'Normal';
                      message ="A BMI of 18.5–24.9 indicates that a person has a healthy weight for their height. By maintaining a healthy weight, they can lower their risk of developing serious health problems.";
                      color =Colors.green;

                    } else if (bmi < 29.9 && bmi > 25.0) {
                      //overweight
                      color =Colors.deepOrange;

                      status = 'Overweight';
                      message ="A BMI of 25–29.9 indicates that a person is slightly overweight. A doctor may advise them to lose some weight for health reasons. They should talk with a doctor or dietitian for advice.";

                    } else {
                      //obese


                      status = 'Obese';
                      message ="A BMI of over 30 indicates that a person has obesity. Their health may be at risk if they do not lose weight. They should talk with a doctor or dietitian for advice.";
                      color =Colors.red;

                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen(
                                  bmi: bmi,
                                  status: status,
                                   message:message,
                                   colors: color,
                                )));

                  },
                  child: Text('caluculate'),
                  color: activeColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
