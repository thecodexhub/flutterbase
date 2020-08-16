import 'package:flutter/material.dart';
import 'package:flutterbase/app/landing_page.dart';
import 'package:flutterbase/app/services/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Authentication Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LandingPage(
        auth: Auth(),
      ),
    );
  }
}