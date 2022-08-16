import 'package:bmi_calculator/provider/weight_provider.dart';
import 'package:bmi_calculator/utilities/colors.dart';
import 'package:flutter/material.dart';
class BuildBottomExpanded extends StatelessWidget {
   BuildBottomExpanded({
    Key? key,
    required this.title_text,
    required this.number_text,
    required this.add,
    required this.less,
    required this.hero,
    required this.hero1,







  }) : super(key: key);

String title_text;
String number_text;
String hero;
String hero1;

VoidCallback add;
VoidCallback less;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
        color: activeColor,

          borderRadius: BorderRadius.circular(20),
        ),
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title_text),
            Text(number_text, style:TextStyle(fontWeight:FontWeight.w900, fontSize:30)),
            //add and minus button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag:hero,
                  onPressed: add,
                  child: Icon(
                    Icons.add,
                  ),
                ),
                FloatingActionButton(
                   heroTag:  hero1,
                  onPressed: less,
                  child: Icon(
                    Icons.remove,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
