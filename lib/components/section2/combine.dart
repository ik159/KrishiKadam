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
        toolbarHeight: height * 0.1,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Container(
          width: width * 0.65,
          child: Center(
            child: Text(
              "Real Time Data",
              style: GoogleFonts.montserrat(
                fontSize: 19,
                color: Colors.black,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color(0xFFB9DA8F), //0xFFB9DA8F
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.45),
                  blurRadius: 3,
                  offset: Offset(0, 5)),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Soil',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 25.0),
              ),
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
                    width: width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/soil.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                ' Crop',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 25.0),
              ),
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
                    width: width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/crops.jpg'),
                        fit: BoxFit.cover,
                      ),
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
