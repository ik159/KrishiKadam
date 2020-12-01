import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:krishikadam/components/bottom_nav.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  double width, height;
  List data;
  bool dataPresent = false;
  Future<void> getPDF() {
    FirebaseFirestore.instance.collection('stats').get().then((myDocuments) {
      print("${myDocuments.docs}");
      print("${myDocuments.docs.length}");
      setState(() {
        data = myDocuments.docs.toList();
        dataPresent = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getPDF();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: height * 0.1,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Statistics",
            style: GoogleFonts.montserrat(color: Colors.black, fontSize: 22),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/logo.png"),
          ),
        ),
        body: dataPresent == true
            ? ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFB9DA8F),
                        borderRadius: BorderRadius.circular(15)),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          data[index]["name"],
                          style: GoogleFonts.montserrat(
                              color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.open_in_new,
                          color: Colors.black87,
                          size: 20,
                        ),
                        onPressed: () {
                          launch(data[index]["link"]);
                        },
                      ),
                    ),
                  );
                })
            : Center(
                child: CircularProgressIndicator(
                  valueColor:
                      new AlwaysStoppedAnimation<Color>(Color(0xFF78A143)),
                ),
              ),
        bottomNavigationBar: BottomNav(
          height: height,
          width: width,
        ));
  }
}
