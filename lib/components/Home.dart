import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:folding_cell/folding_cell.dart';

import 'Awareness_Section.dart';
import 'Predictive_Analysis.dart';
import 'profile_page.dart';
import 'section2/combine.dart';

class HomePage extends StatelessWidget {
  double width, height;
  final _foldingCellKey0 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey1 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey2 = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    Container FTop(GlobalKey<SimpleFoldingCellState> key, String t, Widget Function() Page,) {
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFFB9DA8F),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "$t",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    key?.currentState?.toggleFold();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x000000).withOpacity(1),
                          spreadRadius: -12.0,
                          blurRadius: 12,
                        ),
                      ],
                    ),
                    width: width * 0.3,
                    height: height * 0.05,
                    child: Center(
                      child: Text(
                        "About",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) {
                return Page();
                },
                ));
                },
                  child: Container(
                  width: width * 0.3,
                  height: height * 0.05,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "Go to",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Container ITop(GlobalKey<SimpleFoldingCellState> key, String t) {
      return Container(
        decoration: BoxDecoration(
          color: Color(0xFFB9DA8F),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
            key?.currentState?.toggleFold();
          },
          child: Center(
            child: Text(
              "$t",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
      );
    }

    Container IBottom(GlobalKey<SimpleFoldingCellState> key, String t) {
      return Container(
        decoration: BoxDecoration(
          color: Color(0xFFB9DA8F),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
            key?.currentState?.toggleFold();
          },
          child: Center(
            child: Text(
              "$t",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Center(
          child: Text("KrishiKadam",
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.w500))),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.blur_circular,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfilePage()),
                );
              },
              icon: Icon(
                Icons.account_circle,
                size: 40,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: height * 0.17,
              child: Center(
                child: Text("<Information about KrishiKadam>",
                    style: GoogleFonts.montserrat(
                        textStyle:
                        TextStyle(fontSize: 15, color: Colors.black))),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    child: SimpleFoldingCell(
                      key: _foldingCellKey0,
                      cellSize: Size(width, height * 0.13),
                      frontWidget: FTop(_foldingCellKey0, "Section 1", ()=> AwarenessSection()),
                      innerTopWidget: ITop(_foldingCellKey0,
                          "<Information about the section>"),
                      innerBottomWidget: IBottom(_foldingCellKey0,
                          "<Information about the section>"),
                    ),
                  ),
                  SizedBox(
                    height: height*0.045,
                  ),
                  Container(
                    child: SimpleFoldingCell(
                      key: _foldingCellKey1,
                      cellSize: Size(width, height * 0.13),
                      frontWidget: FTop(_foldingCellKey1, "Section 2", ()=> sect2()),
                      innerTopWidget: ITop(_foldingCellKey1,
                          "<Information about the section>"),
                      innerBottomWidget: IBottom(_foldingCellKey1,
                          "<Information about the section>"),
                    ),
                  ),
                  SizedBox(
                    height: height*0.045,
                  ),
                  Container(
                    child: SimpleFoldingCell(
                      key: _foldingCellKey2,
                      cellSize: Size(width, height * 0.13),
                      frontWidget: FTop(_foldingCellKey2, "Section 3", ()=> sect3()),
                      innerTopWidget: ITop(_foldingCellKey2,
                          "<Information about the section>"),
                      innerBottomWidget: IBottom(_foldingCellKey2,
                          "<Information about the section>"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Image(
                image: AssetImage(
                  "assets/images/bottom.png",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
