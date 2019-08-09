// To parse this JSON data, do
//
//     final sam = samFromJson(jsonString);

import 'dart:convert';

List<Sam> samFromJson(String str) => new List<Sam>.from(json.decode(str).map((x) => Sam.fromJson(x)));

String samToJson(List<Sam> data) => json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class Sam {
    int atomicMass;
    int atomicNo;
    String name;
    String symbol;

    Sam({
        this.atomicMass,
        this.atomicNo,
        this.name,
        this.symbol,
    });

    factory Sam.fromJson(Map<String, dynamic> json) => new Sam(
        atomicMass: json["atomicMass"],
        atomicNo: json["atomicNo"],
        name: json["name"],
        symbol: json["symbol"],
    );

    Map<String, dynamic> toJson() => {
        "atomicMass": atomicMass,
        "atomicNo": atomicNo,
        "name": name,
        "symbol": symbol,
    };
}
