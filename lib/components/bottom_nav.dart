import 'package:flutter/material.dart';
import './profile_page.dart';
import './Awareness_Section.dart';
import './RealTimeData.dart';
import './Predictive_Analysis.dart';

class BottomNav extends StatefulWidget {
  BottomNav({Key key, this.width, this.height}) : super(key: key);

  final double width;
  final double height;

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height * 0.23,
      decoration: BoxDecoration(
        /* borderRadius: BorderRadius.vertical(
                top: Radius.circular(36.0),
              ),*/
        color: Colors.transparent,
      ),
      padding: const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Colors.transparent,
            child: Image.asset(
              "assets/images/bottom.png",
              fit: BoxFit.fill,
            ),
            height: widget.height * .16,
            width: double.infinity,
          ),
          Container(
            height: widget.height * .07,
            color: Color(0xFF78A143),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: null,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFB9DA8F),
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                      icon: Icon(
                        Icons.description,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AwarenessSection()),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5.0),
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFB9DA8F),
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    icon: Icon(Icons.timeline),
                    onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RealTimeData()),
                        );
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5.0),
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFB9DA8F),
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    icon: Icon(Icons.wb_iridescent),
                    onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PredictiveAnalysis()),
                        );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
