import 'package:flutter/material.dart';

class RealTimeData extends StatefulWidget {
  @override
  _RealTimeDataState createState() => _RealTimeDataState();
}

class _RealTimeDataState extends State<RealTimeData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Real Time "),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Real Time"),
          ],
        ),
      ),
    );
  }
}