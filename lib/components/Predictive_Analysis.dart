import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            width: width * 0.60,
            child: Center(
              child: Text(
                "Predictive Analysis",
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
              Navigator.pop(context);
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
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.025, height * 0.05, width * 0.025, height * 0.07),
              child: Row(
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
                            color: Color(0x878787).withOpacity(0.5),
                            spreadRadius: 0.07,
                            blurRadius: 3,
                            offset: Offset(2.0,2.0),
                          )
                        ]
                    ),
                    height: height * 0.075,
                    width: width * 0.35,
                  ),
                  Container(
                    child: Center(child:
                    Text("<Chosen Plant>",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(fontSize: 18, color: Colors.white))),
                    ),
                    height: height * 0.075,
                    width: width * 0.45,
                    decoration: BoxDecoration(
                        color: Color(0xFFB9DA8F),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x878787).withOpacity(0.5),
                            spreadRadius: -10,
                            blurRadius: 10,
                          )
                        ]
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildkey("Water required"),
                buildkey("Infections"),
                buildkey("Harvest time"),
                buildkey("Additional"),
              ],
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
