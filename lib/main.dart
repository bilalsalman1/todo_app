import './home.dart';
import 'package:flutter/material.dart';
import './screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homew(),
      routes: {
        Seven.routeName: (context) => Seven(),
      },
    );
  }
}
