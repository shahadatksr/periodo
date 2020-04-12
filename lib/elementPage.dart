
import 'package:flutter/material.dart';
import 'package:periodo/constant.dart';
class ElementPage extends StatelessWidget {
  final Map<String, dynamic> jsonVar;
  final index;
  final newData;
  ElementPage( this.jsonVar,this.index,this.newData);
  @override
  Widget build(BuildContext context) {
    // timeDilation=0.5;
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
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(0.0,0.4),
              child: Container(
                  height: 450,
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.only(left:25),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          offset: new Offset(0.0, 25.0),
                          blurRadius: 35.0,
                          spreadRadius: 2,
                        )
                      ],
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
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,//1 2 3 4 5 6 
                  colors: [kAltColorList[(jsonVar['atomicNumber']%5)], kColorList[(jsonVar['atomicNumber']%5)+1]],
                  ),
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



//SwipeTo Netxt Page Code
// Dismissible(
//                 resizeDuration: null,
//                 onDismissed: (DismissDirection direction) {
//                     var x=direction == DismissDirection.endToStart ? 1 : -1;
//                     var y=index;
//                     if(x==1){
//                        Navigator.push(context,
//                            PageTransition(
//                              type: PageTransitionType.rightToLeft,
//                              child:ElementPage(newData[y++],y++,newData),
//                            ),
//                         );
//                     }else{
//                        Navigator.push(context,
//                            PageTransition(
//                              type: PageTransitionType.leftToRight,
//                              child:ElementPage(newData[y--],y--,newData),
//                            ),
//                         );
//                     }
                   

//                   },
//                 key: new ValueKey(index),
//                 child: 