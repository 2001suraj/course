// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Container(
        child: Column(
           crossAxisAlignment:  CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/sun.png'),
               width:  150,
                height: 150,
            ),
            Text(
              '32',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              "Georgia",
            style:TextStyle(fontSize: 20,color:Colors.grey, fontWeight:FontWeight.bold),

            ),
             SizedBox(height: 30,),
            Text(
              "Additional Information",
            style:TextStyle(fontSize: 30, fontWeight:FontWeight.bold),

            ),
             SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Wind",
            style:TextStyle(fontSize: 20, fontWeight:FontWeight.bold),

                ),
                SizedBox(width: 10),
                Text(
                  "24",
            style:TextStyle(fontSize: 20),

                ),
                SizedBox(width: 20),
                Text(
                  "Humidity",
            style:TextStyle(fontSize: 20, fontWeight:FontWeight.bold),

                ),
                SizedBox(width: 10),
                Text(
                  "2",
            style:TextStyle(fontSize: 20),

                ),
              ],
            ),
             SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               
              children: [
                Text(
                  "pressure",
            style:TextStyle(fontSize: 20, fontWeight:FontWeight.bold),

                ),
                SizedBox(width: 10),
                Text(
                  "1023",
            style:TextStyle(fontSize: 20),

                ),
                SizedBox(width: 20),
                Text(
                  "feels like",
            style:TextStyle(fontSize: 20, fontWeight:FontWeight.bold),

                ),
                SizedBox(width: 10),
                Text(
                  "24.6",
            style:TextStyle(fontSize: 20,),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
