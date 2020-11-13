import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home.dart';
import 'bottom_nav.dart';

class sect3 extends StatefulWidget {
  @override
  _sect3State createState() => _sect3State();
}

class _sect3State extends State<sect3> {
  double width, height;

  Container buildkey(String t) {
    return Container(
      color: Colors.white,
      child: ListTile(
        trailing: Padding(
          padding: EdgeInsets.only(right: width*0.06),
          child:
          Text("<Analysis> ",
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(fontSize: 18, color: Colors.black))),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: width * 0.06),
          child: Text("$t ",
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(fontSize: 18, color: Colors.black))),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height*0.1,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Container(
          width: width * 0.65,
          child: Center(
            child: Text(
              "Predictive Analysis",
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
                  offset: Offset(0,5)
              ),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()) );
            },
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: height* 0.045,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Center(child:
                    Text("Plant",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(fontSize: 19, color: Colors.black))),
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xFFB9DA8F),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.45),
                            spreadRadius: 0.07,
                            blurRadius: 3,
                            offset: Offset(0,4.0),
                          )
                        ]
                    ),
                    height: height * 0.06,
                    width: width * 0.35,
                  ),
                  Container(
                    child: Center(child:
                    Text("<Chosen Plant>",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(fontSize: 18, color: Colors.white))),
                    ),
                    height: height * 0.06,
                    width: width * 0.45,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-1, -1),
                        end: Alignment(-1, -0.8),
                        colors: [Colors.grey, Color(0xFFB9DA8F)],
                      ),
                      color: Color(0xFFB9DA8F), //0xFFB9DA8F
                    ),
                  ),
                ],
              ),
            SizedBox(height: height* 0.07,),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildkey("Water required"),
                    buildkey("Infections"),
                    buildkey("Harvest time"),
                    buildkey("Additional"),
                  ],
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
