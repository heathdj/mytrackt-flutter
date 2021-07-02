import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mytrackt/screens/getstartedpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyTrackt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetStartedPage(),
    );
  }
}
