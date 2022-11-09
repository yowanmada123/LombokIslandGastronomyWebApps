import 'package:flutter/material.dart';
import 'package:portfolio_website/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gastronomi Lombok',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
