import 'package:flutter/material.dart';
import 'package:final_uts_v3422026/splash.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
       
      ),
      home: const Splash(),
    );
  }
}


