import 'package:flutter/material.dart';
import 'package:custom_switch/custom_switch.dart';
import '../bottom_nav.dart';
import 'combine.dart';
class Soil extends StatefulWidget {
  @override
  _SoilState createState() => _SoilState();
}

class _SoilState extends State<Soil> {
  double width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Color(0xFFB9DA8F),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          width: width * 0.60,
          child: Center(
            child: Text(
              "Soils",
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => sect2()),
            );
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
      body: SingleChildScrollView(
        child: Center(
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    padding: EdgeInsets.all(10),
                    height: height * 0.15,
                    width: width * 0.85,
                    decoration: BoxDecoration(
                        color: Color(0xFFB9DA8F),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Air Humidity',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            Text(
                              '(Low Value)',
                              style:
                                  TextStyle(color: Colors.indigo, fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Max: 60',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            Text(
                              'Min: 50',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            Text(
                              '31.95%',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    padding: EdgeInsets.all(10),
                    height: height * 0.15,
                    width: width * 0.85,
                    decoration: BoxDecoration(
                        color: Color(0xFFB9DA8F),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Air Humidity',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            Text(
                              '(Low Value)',
                              style:
                                  TextStyle(color: Colors.indigo, fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Max: 60',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            Text(
                              'Min: 50',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            Text(
                              '31.95%',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    padding: EdgeInsets.all(10),
                    height: height * 0.15,
                    width: width * 0.85,
                    decoration: BoxDecoration(
                        color: Color(0xFFB9DA8F),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Fog Spray ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '(On)',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.indigo)),
                              ],
                            ),
                          ),
                          Switch()
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    padding: EdgeInsets.all(10),
                    height: height * 0.15,
                    width: width * 0.85,
                    decoration: BoxDecoration(
                        color: Color(0xFFB9DA8F),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Fog Spray ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '(On)',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.indigo)),
                              ],
                            ),
                          ),
                          Switch()
                        ],
                      ),
                    )),
              ),
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

class Switch extends StatefulWidget {
  @override
  _SwitchState createState() => _SwitchState();
}

class _SwitchState extends State<Switch> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomSwitch(
            value: isSwitched,
            activeColor: Colors.green,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),

          // Text('', style: TextStyle(color: Colors.red,
          //     fontSize: 15.0),)
        ]);
  }
}
