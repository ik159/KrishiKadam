import 'package:flutter/material.dart';
import 'package:krishikadam/components/section2/crop.dart';
import 'package:krishikadam/components/section2/soil.dart';
import '../Home.dart';
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
  double width, height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            width: width * 0.60,
            child: Center(
              child: Text(
                "Real Time Data",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black, //0xFF78A143
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xFFB9DA8F), //0xFFB9DA8F
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFB9DA8F).withOpacity(0.5),
                  blurRadius: 5,
                  spreadRadius: 3,
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          ),
          leading: GestureDetector(
            onTap: (){
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
            },
                      child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: null,
              ),
            ),
          ),
        ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Soil',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Soil()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 20.0),
                  child: Container(
                    height: height * .20,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/soil.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80.0, left: 80),
                      // child: Text('Soil',
                      // style: TextStyle(
                      //     color: Colors.green,
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 40.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                ' Crop',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Crop()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 20.0),
                  child: Container(
                    height: height * 0.20,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage('assets/images/crops.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80.0, left: 80.0),
                      // child: Text('Crops',
                      //   style: TextStyle(
                      //       color: Colors.black,
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 40.0)),
                    ),
                  ),
                ),
              ),
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
