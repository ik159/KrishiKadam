import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../bottom_nav.dart';
import 'combine.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data.dart';
class Crop extends StatefulWidget {
  @override
  _CropState createState() => _CropState();
}

class _CropState extends State<Crop> {
  double width, height;
int langint;
  getIntValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int boolValue = prefs.getInt('intValue') ?? 0;
  print(boolValue);
  setState(() {
    langint = boolValue;
  });
}

@override
  void initState() {
    super.initState();
    getIntValuesSF();
  }
  Container create(String topic, String rlevel, String clevel)
  {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFB9DA8F), borderRadius: BorderRadius.circular(15)),
      height: height*0.15,
      width: width*0.8,
      child: Column(
        children: [
          SizedBox(height: height*0.02,),
          Container(child: Text(topic, style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black54), textAlign: TextAlign.start,)),
          SizedBox(height: height*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text( reql[langint] + ": \n $rlevel", style:GoogleFonts.montserrat(fontWeight: FontWeight.w400, fontSize: 15, color: Colors.black),),
              ),
              Container(
                child: Text( curl[langint] + ": \n $clevel", style:GoogleFonts.montserrat(fontWeight: FontWeight.w400, fontSize: 15, color: Colors.black),),
              ),
            ],
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Color(0xFFB9DA8F),
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: height*0.1,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Container(
          width: width * 0.65,
          child: Center(
            child: Text(
              crop[langint],
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => sect2()) );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 20),
                  create(rain[langint], "12mm", "0mm"),
                  SizedBox(height: 20),
                  create(temp[langint], "32° C", "33° C"),
                  SizedBox(height: 20),
                  create(hum[langint], "10", "18"),
                  SizedBox(height: 20),
                  create(dew[langint], "10mm", "11mm"),
                  SizedBox(height: 20),
                ],
              )),
        ),
      ),
      bottomNavigationBar: BottomNav(
        height: height,
        width: width,
      ),
    );
  }
}