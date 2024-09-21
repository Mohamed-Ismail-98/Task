import 'package:flutter/material.dart';
import 'package:form/calculate.dart';
import 'package:form/calc.dart';
import 'package:form/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',

      routes: {
        'home':(context) =>HomePage(),
        'calculate':(context) =>Calculate(),
        'calc':(context) =>Calc(),
      },
      home: HomePage(),
    );
  }
}
