// import 'dart:ffi';

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:home_automation_app/Model/weather_model.dart';
import 'package:home_automation_app/Services/weather_api_client.dart';
import 'package:home_automation_app/views/additional_info.dart';
import 'package:home_automation_app/views/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: weather(),
    );
  }
}
class weather extends StatefulWidget {
  const weather({super.key});

  @override
  State<weather> createState() => _weatherState();
}

class _weatherState extends State<weather> {
  WeatherApiClient client=WeatherApiClient();
  Weather?data;


  Future<void> getData() async{
    
    data=await client.getCurrentWeather("Tokyo");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFF000000),
      appBar: AppBar(
        backgroundColor:const Color(0xFF000000) ,
        elevation: 0.0,
        title:const Text("Weather",
        style: TextStyle(color: 
        Colors.white
        ),
        ),
        centerTitle: true,
        leading: IconButton(onPressed: () {Navigator.pop(context);
        },
        icon:const Icon(Icons.arrow_back),
        color: Colors.indigo,
//         IconButton(
//   onPressed: () {
//     Navigator.pop(context);
//   },
//   icon: const Icon(Icons.arrow_back),
//         color: Colors.black,
// ),

        ),
      ),
      body:FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState==ConnectionState.done) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              currentWeather(Icons.wb_sunny_rounded,"${data!.temp}°","${data!.cityName}"),
              const SizedBox(
                height: 60.0,
              ),
              const Text("Additional Information",
              style:TextStyle(
                fontSize: 24.0,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.bold,
              ),
              ),
              const Divider(),
              const SizedBox(height: 20.0,),
              additionalInformation("${data!.wind}", "${data!.humidity}", "${data!.pressure}", "${data!.feels_like}")
            ],
          );
          }
          else if(snapshot.connectionState==ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        },
        )
    );
  }
}

