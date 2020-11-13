import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import './data.dart';
import './acts.dart';
import './stats.dart';
import './schemes.dart';
import './bottom_nav.dart';
import 'Home.dart';

class AwarenessSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KrishiKadam',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          elevation: 0.0,
          title: Container(
            width: width * 0.65,
            child: Center(
              child: Text(
                "Awareness Section",
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()) );
              },
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12),
                child: Swiper(
                  itemCount: awareness.length,
                  itemWidth: width * 0.8,
                  layout: SwiperLayout.STACK,
                  itemBuilder: (context, index) {
                    return Stack(
                        children: [
                          Positioned(
                            top: height * .16,
                            child: Container(
                              width: width* 0.8,
                              height: height*0.4,
                              child: Card(
                                elevation: 5,
                                color: Color(0xFFB9DA8F),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(17.0),
                                  child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                awareness[index].name,
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 25,
                                                  color: Colors.black,
                                                ),
                                              )),
                                          Container(
                                            width: width*0.6,
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              awareness[index].description,
                                              style: GoogleFonts.montserrat(
                                                  color:
                                                  Colors.black.withOpacity(0.6)),
                                            ),
                                          ),
                                          InkWell(
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
                                            child: Container(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                  "Know More", style: GoogleFonts.montserrat(color: Colors.red[700]),
                                                ),
                                               Icon(
                                                    Icons.arrow_forward_ios, color: Colors.red[700],
                                                  ),
                                              ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                ),
                              ),
                            ),
                          ),
                          Image.asset(
                            awareness[index].iconImage,
                            width: width * .8,
                            height: height * .20,
                          ),
                        ],
                      );
                  },
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNav(
          height: height,
          width: width,
        ));
  }
}
