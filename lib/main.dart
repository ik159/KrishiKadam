import 'package:flutter/material.dart';
import 'package:krishikadam/components/Beginning.dart';
import 'package:firebase_core/firebase_core.dart';
import './components/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Krishi Kadam',
      theme: ThemeData(  
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF78A143),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: _handleWindowDisplay(),
    );
  }
}

Widget _handleWindowDisplay(){
  return StreamBuilder(
stream: FirebaseAuth.instance.authStateChanges(),
builder: (BuildContext context ,snapshot ){
  if(snapshot.connectionState == ConnectionState.waiting){
    return Center(child: SizedBox(height: 150,width: 150,child: CircularProgressIndicator(),));
  }
  else{
    if(snapshot.hasData){
      
      return HomePage();
    }
    else{
      return BeginningPage();
    }
  }
},
  );
}