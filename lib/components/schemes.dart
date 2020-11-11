import 'package:flutter/material.dart';
import 'package:krishikadam/components/data.dart';
import 'package:url_launcher/url_launcher.dart';
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
      backgroundColor: Color(0xFFEAFAE8),
      appBar: AppBar(
        backgroundColor: Color(0xFF0C9869),
        centerTitle: true,
        title: Text("Schemes"),
        leading: Image.asset("assets/images/logo.png"),
      ),
      body:  SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              itemCount: schemes.length,
              itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListTile(title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                  schemes[index].name,
                  style: TextStyle(color: Color(0xFF0C9869)),
                ),
            ),
              trailing: IconButton(icon: Icon(Icons.open_in_new , color: Colors.blue , size: 20,), onPressed: (){

                
                launch(schemes[index].link);
              },),
              
              )
          ); 
        }),
      )
    );
  }
}
