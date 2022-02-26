import 'package:flutter/material.dart';

import 'Screen/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Toon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff00FDFF),
        accentColor: Color(0xffBCFEFF),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomeScreen(),
    );
  }
}
