
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:periodo/constant.dart';
class ElementPage extends StatelessWidget {
  final Map<String, dynamic> jsonVar;
  ElementPage( this.jsonVar);
  @override
  Widget build(BuildContext context) {
    timeDilation=0.5;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              jsonVar['name'],
              style: kAppBarTitleTextStyle,
              ),
          ),
        ),
        backgroundColor: yellowColor,
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(0.0,0.4),
              child: Container(
                  height: 450,
                  margin: EdgeInsets.all(30),
                  //padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 60,width: MediaQuery.of(context).size.width * 0.9),
                      //Text("${jsonVar['name']}\n ${jsonVar['atomicMass']} "),
                      buildTextRow("Atomic Radius","atomicRadius"),
                      buildTextRow("Density","density"),
                      buildTextRow("MeltingPoint","meltingPoint"),
                      buildTextRow("Standard State","standardState"),
                      buildTextRow("Year Discovered","yearDiscovered"),
                      buildTextRow("Ionization Energy","ionizationEnergy"),
                      buildTextRow("Electron Affinity","electronAffinity"),
                    ],
                  ),
              ),
            ),
            Align(
              child: buildHero(),
              alignment: Alignment(0.0,-0.75),
              ),
          ],
        ),
      ),
    );
  }

  Container buildTextRow(var x,var y) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment:CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: <Widget>[
          Text(
            '$x :',
            style: kHeadingTextStyle,
          ),
          Text(
            jsonVar['$y'].toString(),
            style: kSubTextStyle,
          )
        ],
      ),
    );
  }

  Hero buildHero() {
    return Hero(
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
                style: kSymbolTextStyle
                ),
            ),
          ),
        );
  }
}