import 'package:flutter/material.dart';
import 'package:krishikadam/components/data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:krishikadam/components/bottom_nav.dart';
class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  double width, height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Statistics" , style: TextStyle(color: Colors.black),),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/logo.png"),
        ),
      ),
      body:  ListView.builder(
            itemCount: statistics.length,
            itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              color: Color(0xFFB9DA8F), borderRadius: BorderRadius.circular(15)),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListTile(title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
                statistics[index].name,
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
          ),
            trailing: IconButton(icon: Icon(Icons.open_in_new , color: Colors.black87 , size: 20,), onPressed: (){

              
              launch(statistics[index].link); 
            },),
            
            )
        ); 
      }),
      bottomNavigationBar: BottomNav(height: height, width: width,)
    );
  }
}
