import 'package:flutter/material.dart';

import 'widgets/ElementCard.dart';
void main()=>runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: Colors.teal,
  ),
  home: new HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Periodo"),
      ),
      body: Center(
        child: new ElementCard(name: 'Hydrogen',atomicMass: 2.0,symbol: 'H',atomicNo: 1),
      ),
    );
  }
}

