import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:folding_cell/folding_cell.dart';
import 'Awareness_Section.dart';
import 'Predictive_Analysis.dart';
import 'profile_page.dart';
import 'section2/combine.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:krishikadam/components/data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double width, height;

  final _foldingCellKey0 = GlobalKey<SimpleFoldingCellState>();

  final _foldingCellKey1 = GlobalKey<SimpleFoldingCellState>();

  final _foldingCellKey2 = GlobalKey<SimpleFoldingCellState>();

  int langint;

  getIntValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int boolValue = prefs.getInt('intValue') ?? 0;
  print(boolValue);
  setState(() {
    langint = boolValue;
  });
}

changeBool() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int bValue = prefs.getInt('intValue') ?? 0;
  prefs.setInt('intValue', (bValue > 0) ? 0 : 1 );
  bValue = prefs.getInt('intValue');
  setState(() {
    langint = bValue;
  });
}

@override
  void initState() {
    super.initState();
    getIntValuesSF();
  }

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
            Divider(
              height: 1,
              thickness: 1.3,
              indent: 35,
              endIndent: 35,
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
                      gradient: LinearGradient(
                        begin: Alignment(-1, -1),
                        end: Alignment(-1, -0.8),
                        colors: [Colors.black12, Colors.white],
                      ),
                    ),
                    width: width * 0.3,
                    height: height * 0.045,
                    child: Center(
                      child: Text(
                        abttitle[langint],
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Page();
                      },
                    ));
                  },
                  child: Container(
                    width: width * 0.3,
                    height: height * 0.045,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment(-1, -1),
                        end: Alignment(-1, -0.8),
                        colors: [Colors.black12, Colors.white],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        gototitle[langint],
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 16,
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
              "$t", textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
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
              "$t", textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
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
          child: Text(title[langint].name,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.w500))),
        ),
        leading: GestureDetector(
          onTap: (){
changeBool();
          },
                  child: Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Image(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
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
              width: width * 0.8,
              child: Center(
                child: Text(
                    text252[langint],
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ))),
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
                      frontWidget: FTop(_foldingCellKey0, awarenesstitle[langint],
                          () => AwarenessSection()),
                      innerTopWidget: ITop(
                          _foldingCellKey0, text272[langint]),
                      innerBottomWidget: IBottom(
                          _foldingCellKey0, text274[langint]),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.045,
                  ),
                  Container(
                    child: SimpleFoldingCell(
                      key: _foldingCellKey1,
                      cellSize: Size(width, height * 0.13),
                      frontWidget: FTop(
                          _foldingCellKey1, realtimetitle[langint], () => sect2()),
                      innerTopWidget: ITop(
                          _foldingCellKey1, text287[langint]),
                      innerBottomWidget: IBottom(
                          _foldingCellKey1, text289[langint]),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.045,
                  ),
                  Container(
                    child: SimpleFoldingCell(
                      key: _foldingCellKey2,
                      cellSize: Size(width, height * 0.13),
                      frontWidget: FTop(_foldingCellKey2, predititle[langint],
                          () => sect3()),
                      innerTopWidget: ITop(
                          _foldingCellKey2, text302[langint]),
                      innerBottomWidget: IBottom(
                          _foldingCellKey2, text304[langint]),
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
