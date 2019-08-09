import 'package:flutter/material.dart';

class ElementCard extends StatelessWidget {
  final String tagg;
  final String name;
  final String symbol;
  final int atomicNo;
  final String atomicMass;
  ElementCard({this.atomicMass,this.atomicNo,this.name,this.symbol,this.tagg});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      //width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: tagg,
            child: Container(
              height: 120,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                ),
                color: Colors.indigo,
              ),
              margin: EdgeInsets.only(right: 10),
              child: Center(
                child: Text(
                  symbol,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 45
                  ),
                  ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                  Text(
                  "$atomicMass gms",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  )
              ],
            ),
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.lightGreenAccent,
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                atomicNo.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30
                ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}