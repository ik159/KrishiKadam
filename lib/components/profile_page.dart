import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';
import './bottom_nav.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double width, height;
  String uid;
  String name;
  String phone;
  String city;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool isSwitched = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  Future<void> getCurrentUser() async {
    final User user = _auth.currentUser;
    final uid = user.uid;
    FirebaseFirestore.instance
        .collection('userdata')
        .doc(uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print('Document data: ${documentSnapshot.data()["phone"]}');
        setState(() {
          name = documentSnapshot.data()["name"];
          phone = documentSnapshot.data()["phone"];
          city = documentSnapshot.data()["city"];
        });
      } else {
        print('Document does not exist on the database');
      }
    });
    print(uid);
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
        elevation: 0.0,
        title: Container(
          width: width * 0.60,
          child: Center(
            child: Text(
              "Profile",
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
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.power_settings_new,
              color: Colors.black,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => LogOut(),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: ClipOval(
                      child: Image.network(
                        'https://moonvillageassociation.org/wp-content/uploads/2018/06/default-profile-picture1.jpg',
                        width: width * 0.3,
                        fit: BoxFit.cover,
                      ),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2.0)),
                  ),
                  Container(
                    width: width * 0.50,
                    child: Center(
                      child: name == null
                          ? Container(
                              height: 12,
                              width: 12,
                              child: CircularProgressIndicator())
                          : Text(
                              name,
                              style: GoogleFonts.montserrat(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500 //0xFF78A143
                                  ),
                            ),
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-1, -1),
                        end: Alignment(-1, -0.8),
                        colors: [Colors.grey, Color(0xFFB9DA8F)],
                      ),
                      color: Color(0xFFB9DA8F), //0xFFB9DA8F
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: width * 0.3,
                    child: Center(
                      child: Text(
                        "Place",
                        style: GoogleFonts.montserrat(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500 //0xFF78A143
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
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  ),
                  Container(
                    width: width * 0.50,
                    child: Center(
                      child: city == null
                          ? Container(
                              height: 12,
                              width: 12,
                              child: CircularProgressIndicator())
                          : Text(
                              city,
                              style: GoogleFonts.montserrat(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500 //0xFF78A143
                                  ),
                            ),
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-1, -1),
                        end: Alignment(-1, -0.8),
                        colors: [Colors.grey, Color(0xFFB9DA8F)],
                      ),
                      color: Color(0xFFB9DA8F), //0xFFB9DA8F
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: width * 0.3,
                    child: Center(
                      child: Text(
                        "Phone",
                        style: GoogleFonts.montserrat(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                            //0xFF78A143
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
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  ),
                  Container(
                    width: width * 0.50,
                    child: Center(
                      child: phone == null
                          ? Container(
                              height: 12,
                              width: 12,
                              child: CircularProgressIndicator(),
                            )
                          : Text(
                              phone,
                              style: GoogleFonts.montserrat(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500 //0xFF78A143
                                  ),
                            ),
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-1, -1),
                        end: Alignment(-1, -0.8),
                        colors: [Colors.grey, Color(0xFFB9DA8F)],
                      ),
                      color: Color(0xFFB9DA8F), //0xFFB9DA8F
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Container(
                width: width * 0.60,
                child: Center(
                  child: Text(
                    "Sensor Information",
                    style: GoogleFonts.montserrat(
                      fontSize: 17,
                      color: Colors.black, //0xFF78A143
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
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Column(
                  children: [
                    Container(
                      width: width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sensor 1: Soil",
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                            ),
                          ),
                          Container(
                            child: Switch(
                              value: isSwitched3,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched3 = value;
                                });
                              },
                              inactiveTrackColor: Colors.red[700],
                              inactiveThumbColor: Colors.grey[200],
                              activeTrackColor: Color(0xFFB9DA8F),
                              activeColor: Colors.grey[200],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sensor 2: Water",
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                            ),
                          ),
                          Container(
                            child: Switch(
                              value: isSwitched2,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched2 = value;
                                });
                              },
                              inactiveTrackColor: Colors.red[700],
                              inactiveThumbColor: Colors.grey[200],
                              activeTrackColor: Color(0xFFB9DA8F),
                              activeColor: Colors.grey[200],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sensor 3: ",
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                            ),
                          ),
                          Container(
                            child: Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                });
                              },
                              inactiveTrackColor: Colors.red[700],
                              inactiveThumbColor: Colors.grey[200],
                              activeTrackColor: Color(0xFFB9DA8F),
                              activeColor: Colors.grey[200],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(
        width: width,
        height: height,
      ),
    );
  }
}

class LogOut extends StatelessWidget {
  final Color myColor = Color(0xff00bfa5);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0))),
      contentPadding: EdgeInsets.only(top: 10.0),
      title: Column(
        children: <Widget>[
          Icon(
            Icons.error,
            size: 75.0,
            color: Colors.red.shade700,
          ),
          Text(
            "Are you sure?",
            textAlign: TextAlign.center, style: GoogleFonts.montserrat(),
          )
        ],
      ),
      content: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            InkWell(
              child: Container(
                padding: EdgeInsets.only(top: 15.0, bottom: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xFF78A143),
                ),
                child: Text(
                  "Log Out",
                  style: GoogleFonts.montserrat(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => MyApp()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(top: 15.0, bottom: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xFF78A143),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32.0),
                      bottomRight: Radius.circular(32.0)),
                ),
                child: Text(
                  "Go Back",
                  style: GoogleFonts.montserrat(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
