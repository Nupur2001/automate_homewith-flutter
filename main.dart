// ignore_for_file: unused_import
// Flutter run



import 'package:home_automation_app/room1.dart';
import 'package:home_automation_app/weather.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        hintColor: Colors.white,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> 
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: Container(
      margin: const EdgeInsets.only(top: 18,left: 24,right: 24),
      child: Column
      (children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:const [
            Text(
              "Hello",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
      
          ],
        ),
        Expanded(
          child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 32,),
            Center(
              child: Image.asset('assets/images/banner.png'),
            ),
            const SizedBox(height: 16,),
            const Center(
              child: Text(
              'Smart Home',
              style:TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )
              ),
              ),
            const SizedBox(height: 20),
            const Text('SERVICES',
            style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
            const SizedBox(height: 48),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 48),
                _cardMenu(
                onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder:(context)=>const Room1()
                ));
                },
                icon:'assets/images/Bedroom2.png',
                title:'MY ROOM',
                color: Colors.indigoAccent,
                fontColor: Colors.white,
                ),
                // const SizedBox(height: 16), 
                _cardMenu(
                onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder:(context)=>const weather()
                ));
                },
                icon:'assets/images/weather.png',
                title:'TEMPERATURE',
                color: Colors.indigoAccent,
                fontColor: Colors.white,
                ),
              ],
            ),          
          ],
        ))
      ]),
      ),),
    );
  }
  Widget _cardMenu({
    required String title,
    required String icon,
    VoidCallback?onTap,
    Color color=Colors.white,
    Color fontColor=Colors.grey,
  }){
return GestureDetector(
  onTap: onTap,
  child:Container(
    padding: const EdgeInsets.symmetric(vertical: 36),
    width: 156,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24),
      color: color,
    ),
    child: Column(children: [
      Image.asset(icon),
      const SizedBox(height: 10,width: 20),
      Text(title,style: TextStyle(
        fontWeight: FontWeight.bold,
        color: fontColor,
      ),)
    ]),
  ),
);
  }
}
        
