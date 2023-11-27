import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Scrap Service',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: SplashScreen(),
    );
  }
}
