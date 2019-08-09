import 'models/samProvider.dart';

void main(){
  var l=[
    {
    "atomicMass": 2.0,
    "atomicNo": 1,
    "name": "Hydrogen",
    "symbol": "H"
    },
    {
        "atomicMass": 2.0,
        "atomicNo": 1,
        "name": "Hydrogen",
        "symbol": "H"
    },
    {
        "atomicMass": 2.0,
        "atomicNo": 1,
        "name": "Hydrogen",
        "symbol": "H"
    },
    {
        "atomicMass": 2.0,
        "atomicNo": 1,
        "name": "Hydrogen",
        "symbol": "H"
    }
];
  Sam s1=Sam(name: l[0]['name']);
  print(s1.name);


}