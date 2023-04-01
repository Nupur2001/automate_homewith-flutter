import 'package:flutter/material.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';

class Room1 extends StatefulWidget {
  const Room1({super.key});

  @override
  State<Room1> createState() => _Room1State();
}

class _Room1State extends State<Room1> {
  bool on = false;
  bool on1 = false;
  bool on2 = false;
  bool on3 = false;
  double heating = 12;
  @override
  Widget build(BuildContext context) {
    // const Text(
    //   'MY ROOM',
    //   style: TextStyle(
    //     fontSize: 32,
    //     fontWeight: FontWeight.bold,
    //     color: Colors.white,
    //   ),
    // );
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back, color: Colors.indigo),
                  ),
                
                ],
              ),
             
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 32),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('APPLIANCE',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ))
                        
                      ],
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            on
                                ?
                                // ignore: prefer_const_constructors
                                Icon(
                                    Icons.lightbulb,
                                    size: 60,
                                    color: Colors.amber,
                                  )
                                : const Icon(
                                    Icons.lightbulb_outline,
                                    size: 60,
                                    color: Colors.white,
                                  ),
                            ElevatedButton(
                                style: TextButton.styleFrom(
                                    backgroundColor:
                                        on ? Colors.green : Colors.white10),
                                onPressed: () {
                                  setState(() {
                                    on = !on;
                                  });
                                },
                                child: on
                                    ? const Text("Led On")
                                    : const Text("Led Off"))
                          ],
                        ),
                        Column(
                          children: [
                            on1
                                ?
                                // ignore: prefer_const_constructors
                                Icon(
                                    Icons.lightbulb,
                                    size: 60,
                                    color: Colors.amber,
                                  )
                                : const Icon(
                                    Icons.lightbulb_outline,
                                    size: 60,
                                    color: Colors.white,
                                  ),
                            ElevatedButton(
                                style: TextButton.styleFrom(
                                    backgroundColor:
                                        on1 ? Colors.green : Colors.white10),
                                onPressed: () {
                                  setState(() {
                                    on1 = !on1;
                                  });
                                },
                                child: on1
                                    ? const Text("Led On")
                                    : const Text("Led Off"))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _roundedButton({
  //   required String title,
  //   bool isActive = false,
  // }) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
  //     decoration: BoxDecoration(
  //       // color: isActive ? Colors.indigo : Colors.transparent,
  //       color: Colors.transparent,
  //       borderRadius: BorderRadius.circular(24),
  //       border: Border.all(color: Colors.indigo),
  //     ),
  //     child: Text(title,
  //         // ignore: prefer_const_constructors
  //         style: TextStyle(
  //           color: Colors.white,
  //           // color: isActive ? Colors.white : Colors.black
  //         )),
  //   );
  // }
}
