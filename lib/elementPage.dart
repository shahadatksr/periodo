
import 'package:flutter/material.dart';
class ElementPage extends StatelessWidget {
  final Map<String, dynamic> jsonVar;
  ElementPage( this.jsonVar);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Hero(
            tag: jsonVar['name'],
            child: Container(
              height: 120,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.indigo,
              ),
              margin: EdgeInsets.only(right: 10),
              child: Center(
                child: Text(
                  jsonVar['symbol'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 45
                  ),
                  ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}