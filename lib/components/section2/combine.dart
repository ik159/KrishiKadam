
import 'package:flutter/material.dart';
import 'package:krishikadam/components/section2/crop.dart';
import 'package:krishikadam/components/section2/soil.dart';
import '../bottom_nav.dart';

class sect2 extends StatelessWidget {
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

double width , height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
          body: SingleChildScrollView(
                      child: Column(
        children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical:25.0, horizontal: 30.0),
              child: Container(
        
                                  height: height * .07,
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
                padding: const EdgeInsets.symmetric(vertical:15.0, horizontal: 20.0),
                child: Container(
                  height: height * .25,
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
                padding: const EdgeInsets.symmetric(vertical:15.0, horizontal: 20.0),
                child: Container(
                  height: height *0.25,
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
            
        ],
      ),
          ),
          bottomNavigationBar: BottomNav(
        height: height,
        width: width,
      ),
    );
  }
}