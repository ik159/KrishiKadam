import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import './data.dart';
import './acts.dart';
import './stats.dart';
import './schemes.dart';
import './bottom_nav.dart';


class AwarenessSection extends StatefulWidget {
  @override
  _AwarenessSectionState createState() => _AwarenessSectionState();
}

class _AwarenessSectionState extends State<AwarenessSection> {
  double width, height;

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
                "Documents",
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: height * 0.15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0))),
                height: height * .50,
                child: Swiper(
                  itemCount: awareness.length,
                  itemWidth: width * 0.8,
                  layout: SwiperLayout.STACK,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ActsnRules()),
                          );
                        } else if (index == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SchemesPage()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Stats()),
                          );
                        }
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: height * .36,
                          ),
                          Positioned(
                            top: height * .16,
                            left: 0,
                            child: Container(
                              width: width * 0.8,
                              child: Card(
                                elevation: 8,

                                color: Color(0xFFB9DA8F)
                                    .withOpacity(0.95), //0xFF0C9869
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                awareness[index].name,
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.black.withOpacity(0.6),
                                                ),
                                              )),
                                          Container(
                                            padding: EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Know More ",
                                                  style: TextStyle(
                                                      color:
                                                          Colors.red.shade700),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Colors.red.shade500,
                                                  size: 10,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Text((index + 1).toString(),
                                            style: TextStyle(
                                              color: Color(0xFF78A143).withOpacity(0.6),
                                                  
                                              fontSize: 35,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Image.asset(
                              awareness[index].iconImage,
                              width: width * .8,
                              height: height * .20,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNav(
          height: height,
          width: width,
        ));
  }
}
