// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';

Widget currentWeather(IconData icon,String temp,String location){
  return Center(
    child: Column( 
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Icon(
          icon,
          color: Colors.orange,
          size: 64.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "$temp",
            style:const TextStyle(
              fontSize: 46.0,
              color: Color(0xFFFFFFFF),
              
              ),
          ),
          const SizedBox(height: 10.0),
           Text(
            "$location",
            style:const TextStyle(
              fontSize: 18.0,
              color: Color(0xFFFFFFFF),

            ),
              ),
      ],
    ),
  );
}