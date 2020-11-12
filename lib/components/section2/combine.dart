
import 'package:flutter/material.dart';
import 'package:krishikadam/components/Section2/crop.dart';
import 'package:krishikadam/components/Section2/soil.dart';

import '../bottom_nav.dart';




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen(),
    );
  }
}
class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFB9DA8F),
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:50.0, left: 30.0),
            child: Container(
              width: 380,
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
          ),
          GestureDetector(
            onTap: (){
          Navigator.push(  context,
    MaterialPageRoute(builder: (context) => Soil()),
  );
        },
                      child: Padding(
              padding: const EdgeInsets.only(top:30.0, left: 20.0),
              child: Container(
                height: 200,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(
                          image: AssetImage('assets/images/soil.jpg'),
                          fit: BoxFit.cover,
                        ),
                ),
                child:  Padding(
                  padding: const EdgeInsets.only(top:80.0, left: 80),
                  child: Text('Soil',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0)),
                ),
              ),
            ),
          ),
            GestureDetector(
              onTap: (){
          Navigator.push(  context,
    MaterialPageRoute(builder: (context) => Crop()),
  );
        },
                          child: Padding(
              padding: const EdgeInsets.only(top:20.0, left: 20.0),
              child: Container(
                height: 200,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                  image: DecorationImage(
                          image: AssetImage('assets/images/crops.jpg'),
                          fit: BoxFit.cover,
                        ),
                ),
              child:  Padding(
                padding: const EdgeInsets.only(top:80.0, left: 80.0),
                child: Text('Crops',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0)),
              ),
              ),
          ),
            ),
            BottomNav(),
        ],
      ),
    );
  }
}