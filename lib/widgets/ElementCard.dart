import 'package:flutter/material.dart';
import 'package:periodo/constant.dart';

class ElementCard extends StatelessWidget {
  final String tagg;
  final String name;
  final String symbol;
  final int atomicNo;
  final String atomicMass;
  ElementCard({this.atomicMass,this.atomicNo,this.name,this.symbol,this.tagg});

  @override
  Widget build(BuildContext context) {
    // timeDilation=0.5;
    return Container(
      height: 120,
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
           BoxShadow(
              color: Colors.black54,
              offset: new Offset(0.0, 15.0),
              blurRadius: 25.0,
              spreadRadius: -2,
            )
          ],
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
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,//1 2 3 4 5 6 
                  colors: [kAltColorList[(atomicNo%5)], kColorList[(atomicNo%5)+1]],
                  ),
                borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                ),
                //color: Colors.indigo,
              ),
              margin: EdgeInsets.only(right: 10),
              child: Center(
                child: Text(
                  symbol,
                  textAlign: TextAlign.center,
                  style: kSymbolTextStyle
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
                  style:kNameTextStyle
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
              color: Colors.lightGreenAccent[50],
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                '',
                //atomicNo.toString(),
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