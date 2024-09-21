import 'package:flutter/material.dart';
import 'package:form/calc.dart';

import 'bmi.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final List<Widget> children = [
    const Login(),
    Bmi(),
    Calc(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val){
          setState(() {
            currentIndex=val;
          });
        },
        currentIndex: currentIndex,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        selectedFontSize: 18,
        unselectedFontSize: 13,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600,fontStyle: FontStyle.italic),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.login),label: "Login"),
          BottomNavigationBarItem(icon: Icon(Icons.line_weight),label: "BMI"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "Calculate"),
        ],
      ),
      body: Container(child:children.elementAt(currentIndex),)
    );
  }
}

