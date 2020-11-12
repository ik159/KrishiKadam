import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Container(
          decoration: BoxDecoration(color: Color(0xFFB9DA8F), boxShadow: [
            BoxShadow(
              color: Color(0x878787).withOpacity(0.5),
              spreadRadius: 0.07,
              blurRadius: 3,
              offset: Offset(2.0, 2.0),
            )
          ]),
          width: width * 0.65,
          height: height * 0.09,
          child: Center(
            child: Text("Real Time Data",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: 21, color: Colors.black))),
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
