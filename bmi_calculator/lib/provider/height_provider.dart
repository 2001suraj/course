import 'package:flutter/foundation.dart';

class HeightProvider extends ChangeNotifier{
  double _height = 50;
   double get height => _height;
   void onchange(newheight){
_height = newheight;
notifyListeners();
   }
}