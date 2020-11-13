import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krishikadam/components/data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:krishikadam/components/bottom_nav.dart';

class SchemesPage extends StatefulWidget {
  @override
  _SchemesPageState createState() => _SchemesPageState();
}

class _SchemesPageState extends State<SchemesPage> {
  double width, height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: height*0.1,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text("Schemes" , style: GoogleFonts.montserrat(color: Colors.black, fontSize: 22),),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/logo.png"),
          ),
        ),
        body:  ListView.builder(
            itemCount: schemes.length,
            itemBuilder: (context, index) {
              return Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFB9DA8F), borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListTile(title: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      schemes[index].name,
                      style: GoogleFonts.montserrat(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                    trailing: IconButton(icon: Icon(Icons.open_in_new , color: Colors.black87 , size: 20,), onPressed: (){
                      launch(schemes[index].link);
                    },),
                  ),
              );
            }),
        bottomNavigationBar: BottomNav(height: height, width: width,)
    );
  }
}
