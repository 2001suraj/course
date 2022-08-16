
import 'package:flutter/foundation.dart';

class WeightProvider  extends ChangeNotifier{
   int _weight  = 50;
    int get weight => _weight;
    void onchange_add (){
      _weight ++;
       notifyListeners();
    }
     void onchange_less (){
      _weight --;
       notifyListeners();
    }
}