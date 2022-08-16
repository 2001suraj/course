import 'package:bmi_calculator/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorProvider  extends ChangeNotifier{
  Color _male = activeColor;
  Color _female = activeColor;


   Color get male => _male;
   Color get female => _female;

   void onchangemale (){
     if(_male == male){
      _male = inactiveColor;
      _female = activeColor;
     }else if(_female == female){
      _female = inactiveColor;
      _male  = activeColor;
     }
      notifyListeners();
   }
   void onchangefemale (){
    if(_female == female){
      _female = inactiveColor;
  _male  = activeColor;
     }
     else   if(_male == male){
      _male = inactiveColor;
      _female = activeColor;
     }
      notifyListeners();
   }

}
