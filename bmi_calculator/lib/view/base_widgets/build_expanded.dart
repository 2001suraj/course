import 'package:flutter/material.dart';
class BuildExpanded extends StatelessWidget {
   BuildExpanded({
    Key? key,
     required this.icon, 
     required this.text, 
      required this.colors,
      required this.tap,


  }) : super(key: key);

IconData icon;
String text;
 Color colors;
  VoidCallback  tap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
         onTap: tap,
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              color: colors,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, size: 90,),
              Text(
                text,
                style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
