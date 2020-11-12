import 'package:flutter/material.dart';
import 'package:custom_switch/custom_switch.dart';
import '../bottom_nav.dart';

class Soil extends StatefulWidget {
  @override
  _SoilState createState() => _SoilState();
}

class _SoilState extends State<Soil> {
  double width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFB9DA8F),
      body:   SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.only(top:50.0, left: 30.0),
          child: Column(
            children: [
              Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0, left: 8, right: 20),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                  size: 34.0,
                                ),
                              ),
                              Container(
                                width: width *0.7,
                                height: 45,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(.1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Search...",
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.search),
                                  ),
                                ),
                              ),
                              
                            ],
                          ),
                           Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 10),
                      child: Text(
                        'Soil',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  
                       Column(children: [
                           Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 100,
                            width: 340,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Air Humidity',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0, left: 2.0),
                                      child: Text(
                                        '(Low Value)',
                                        style: TextStyle(
                                            color: Colors.indigo, fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Max: 60',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0, left: 10.0),
                                      child: Text(
                                        'Min: 50',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 70.0),
                                      child: Text(
                                        '31.95%',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 30),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                    ),

                     Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 100,
                            width: 340,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Air Humidity',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0, left: 2.0),
                                      child: Text(
                                        '(Low Value)',
                                        style: TextStyle(
                                            color: Colors.indigo, fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Max: 60',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0, left: 10.0),
                                      child: Text(
                                        'Min: 50',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 70.0),
                                      child: Text(
                                        '31.95%',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 30),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                    ),

                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 100,
                            width: 340,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 40.0, left: 10.0),
                                      child: Text(
                                        'Fog Spray',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 40.0, left: 2.0),
                                      child: Text(
                                        '(On)',
                                        style: TextStyle(
                                            color: Colors.indigo, fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30.0, left: 80.0),
                                      child: Switch(),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                    ),

                     Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 100,
                            width: 340,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 40.0, left: 10.0),
                                      child: Text(
                                        'Fog Spray',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 40.0, left: 2.0),
                                      child: Text(
                                        '(On)',
                                        style: TextStyle(
                                            color: Colors.indigo, fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30.0, left: 80.0),
                                      child: Switch(),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                    )
                        ],),
                      
                  
            ],
          ),
        ),
      ),
    bottomNavigationBar: BottomNav(
        height: height,
        width: width,
      ),
    );
  }
}

class Switch extends StatefulWidget {
  @override
  _SwitchState createState() => _SwitchState();
}

class _SwitchState extends State<Switch> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomSwitch(
            value: isSwitched,
            activeColor: Colors.green,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),

          // Text('', style: TextStyle(color: Colors.red,
          //     fontSize: 15.0),)
        ]);
  }
}