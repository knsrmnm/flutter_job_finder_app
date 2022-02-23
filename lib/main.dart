import 'package:flutter/material.dart';
import 'package:flutter_job_finder_app/screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Finder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: SplashScreen(),
    );
  }
}
