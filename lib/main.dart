import 'package:flutter/material.dart';
import 'package:simple_sebha/sebha_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sebha',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily:'quran' ,

      ),
      home:SebhaScreen() ,
      debugShowCheckedModeBanner: false,
    );
  }
}


