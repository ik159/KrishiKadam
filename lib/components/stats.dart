import 'package:flutter/material.dart';
import 'package:krishikadam/components/data.dart';
import 'package:url_launcher/url_launcher.dart';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ddd"),
      ),
      body: Container(child: Text("Body"),),
    );
  }
}
