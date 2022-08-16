import 'package:flutter/foundation.dart';

class AgeProvider extends ChangeNotifier{
   int _age = 50;
   int get age => _age;
  void  onchange_add (){
     _age ++;
      notifyListeners();
  }
   void  onchange_less (){
     _age --;
      notifyListeners();

  }
}