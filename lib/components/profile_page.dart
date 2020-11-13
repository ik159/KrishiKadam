import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../main.dart';
import './bottom_nav.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double width, height;
  String uid;
  String name ;
  String phone ;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
void initState() {
  super.initState();
  getCurrentUser();
  }
  
  Future<void> getCurrentUser() async {
    final User user =  _auth.currentUser;
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
        });
      } else {
        print('Document does not exist on the database');
      }
    });
    print(uid);
    //print(uemail);
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white, //Color(0xFF0C9869),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          width: width * 0.60,
          child: Center(
            child: Text(
              "Profile",
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
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
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
                      child: Image.asset(
                        'assets/images/stats.png',
                        width: width * 0.3,
                        fit: BoxFit.cover,
                      ),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 3.0)),
                  ),
                  Container(
                    width: width * 0.50,
                    child: Center(
                  child:   name==null ? Container(height: 12 , width: 12 ,child: CircularProgressIndicator()) :  Text(
                        name,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.6), //0xFF78A143
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
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white, //0xFF78A143
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
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  ),
                  Container(
                    width: width * 0.50,
                    child: Center(
                      child: Text(
                        "Manipal",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.6), //0xFF78A143
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
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white, //0xFF78A143
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
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  ),
                  Container(
                    width: width * 0.50,
                    child: Center(
               child :  phone == null ? Container(height: 12 , width: 12 ,child: CircularProgressIndicator(),):      Text(
                        phone,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.6), //0xFF78A143
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
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black.withOpacity(0.6), //0xFF78A143
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
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Column(
                  children: [
                    Container(
                      width: width * 0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Water Spray"),
                          Container(
                            child: Switch(
                              onChanged: null,
                              value: false,
                              inactiveThumbColor: Colors.grey[300],
                              inactiveTrackColor: Colors.red.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Temperature"),
                          Container(
                            child: Switch(
                              onChanged: null,
                              value: false,
                              inactiveThumbColor: Colors.grey[300],
                              inactiveTrackColor: Colors.red.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Humidity"),
                          Container(
                            child: Switch(
                              onChanged: null,
                              value: false,
                              inactiveThumbColor: Colors.grey[300],
                              inactiveTrackColor: Colors.red.shade700,
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
            size: 80.0,
            color: Colors.red.shade700,
          ),
          Text(
            "Are you sure?",
            textAlign: TextAlign.center,
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
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32.0),
                      bottomRight: Radius.circular(32.0)),
                ),
                child: Text(
                  "Log Out",
                  style: TextStyle(color: Colors.white),
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
          ],
        ),
      ),
    );
  }
}
