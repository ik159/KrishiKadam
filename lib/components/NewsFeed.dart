import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:krishikadam/components/Home.dart';
import 'package:krishikadam/components/bottom_nav.dart';

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  final formKey = new GlobalKey<FormState>();

  String _description;
  String name;
  String city;
  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();

      return true;
    }
    return false;
  }

  void validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        String datenow = new DateTime.now().toString();
        CollectionReference feed =
            FirebaseFirestore.instance.collection('feed');

        feed.doc(name + datenow).set({
          'Name': name,
          'Description': _description,
          'CreatedAt': new DateTime.now(),
          'City': city,
        });
      } catch (e) {
        print(e.message);
      }
      getFeed();
      formKey.currentState.reset();
      FocusScopeNode currentFocus = FocusScope.of(context);

      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    }
  }

  @override
  void initState() {
    super.initState();
    getCurrentUser();
    getFeed();
  }

  List data;
  bool dataPresent = false;
  Future<void> getFeed() {
    FirebaseFirestore.instance.collection('feed').get().then((myDocuments) {
      print("${myDocuments.docs}");
      print("${myDocuments.docs.length}");
      setState(() {
        data = myDocuments.docs.toList();
        dataPresent = true;
      });
      print(data[0]["name"]);
    });
  }

  Future<void> getCurrentUser() async {
    final User user = FirebaseAuth.instance.currentUser;
    final uid = user.uid;
    FirebaseFirestore.instance
        .collection('userdata')
        .doc(uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        setState(() {
          name = documentSnapshot.data()["name"];
          city = documentSnapshot.data()["city"];
        });
      } else {
        print('Document does not exist on the database');
      }
    });
    print(uid);
  }

  double height, width;

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
              "News Feed",
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
      body: Container(
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 10),
              child: Form(
                key: formKey,
                child: TextFormField(
                  cursorColor: Color(0xFF78A143),
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.send,
                          color: Color(0xFF78A143),
                        ),
                        onPressed: () {
                          validateAndSubmit();
                        },
                      ),
                      labelText: 'Whats on your mind',
                      labelStyle: TextStyle(
                        color: Color(0xFF78A143),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF78A143)))),
                  validator: (value) =>
                      value.isEmpty ? 'cannot be empty.' : null,
                  onSaved: (value) => _description = value,
                ),
              ),
            ),
            dataPresent == true
                ? Expanded(
                    child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(2.0,
                                      2.0), // shadow direction: bottom right
                                )
                              ],
                            ),
                            margin: EdgeInsets.symmetric(
                                horizontal: width * 0.05, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFB9DA8F),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 8),
                                        child: ClipOval(
                                          child: Image.network(
                                            'https://moonvillageassociation.org/wp-content/uploads/2018/06/default-profile-picture1.jpg',
                                            width: width * 0.1,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.black,
                                                width: 2.0)),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              data[data.length - index - 1]
                                                  ["Name"],
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "🌎 " +
                                                  data[data.length - index - 1]
                                                      ["City"] + " ⌚ " +
                                                  DateFormat.yMMMd()
                                                      .add_jm()
                                                      .format(data[data.length -
                                                              index -
                                                              1]["CreatedAt"]
                                                          .toDate()),
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Text(
                                    data[data.length - index - 1]
                                        ["Description"],
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  )
                : Center(
                    child: CircularProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Color(0xFF78A143)),
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
