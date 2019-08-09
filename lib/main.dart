import 'dart:convert';

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
        child: FutureBuilder(
                future: DefaultAssetBundle
                    .of(context)
                    .loadString('Elements/elements_json.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var newData = json.decode(snapshot.data.toString());

                  return ListView.builder(
                    // Build the ListView
                    itemBuilder: (BuildContext context, int index) {
                      return FlatButton(
                        onPressed: (){
                          print(newData[index]);
                        },
                        child: ElementCard(
                          name: newData[index]['name'],
                          atomicMass: newData[index]['atomicMass'],
                          symbol: newData[index]['symbol'],
                          atomicNo: newData[index]['atomicNumber']),
                      );
                    },
                    itemCount: newData == null ? 0 : newData.length,
                  );
                })
      //Here  
      ),
    );
  }
}

//ElementCard(name: newData[index]['name'],atomicMass: newData[index]['atomicMass'],symbol: newData[index]['symbol'],atomicNo: newData[index]['atomicNo']),
//ElementCard(name: 'Hydrogen',atomicMass: 2.0,symbol: 'H',atomicNo: 1),
// Card(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.stretch,
//                           children: <Widget>[
//                             Text("Name: " + newData[index]['name']),
//                             Text("Symbol: " + newData[index]['symbol']),
//                             Text("Mass: " + newData[index]['atomicMass']),
//                             Text("Atomic No: " + newData[index]['atomicNo'])
//                           ],
//                         ),
//                       );