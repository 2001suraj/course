// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;



const ApiKey ='8fafe1f5bdbe5902772c0943ff64cdbb';
class LoadingScreen extends StatelessWidget {
  late double latitude;
   late double longitude;

Future<void> getLocation() async {
   try{
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
         print(position);
         latitude = position.latitude;
         longitude = position. longitude;

         getData();
   }
    catch(error){
       print(error);
    }
    

  }
   void getData()async{
    http.Response response = await  http.get(Uri.parse('https://samples.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$ApiKey'));
     if(response.statusCode == 200){
       String data=  response.body;
        var DData = jsonDecode(data);
       var id = DData['weather'][0]['id'];
       var temp = DData['main']['temp'];
       var city = DData['name'];
        print(id);
        print(temp);
        print(city);

      
     }
      else{
         print(response.statusCode);
      }
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RaisedButton(
        onPressed:
        // getData,
         getLocation,
        child: Text('Get location'),
      ),
    ));
  }
}
