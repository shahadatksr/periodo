// To parse this JSON data, do
//
//     final elements = elementsFromJson(jsonString);

import 'dart:convert';

List<Elements> elementsFromJson(String str) => new List<Elements>.from(json.decode(str).map((x) => Elements.fromJson(x)));

String elementsToJson(List<Elements> data) => json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class Elements {
    dynamic atomicMass;
    int atomicNumber;
    dynamic atomicRadius;
    dynamic boilingPoint;
    BondingType bondingType;
    dynamic cpkHexColor;
    dynamic density;
    dynamic electronAffinity;
    dynamic electronegativity;
    String electronicConfiguration;
    String groupBlock;
    String ionRadius;
    dynamic ionizationEnergy;
    dynamic meltingPoint;
    String name;
    dynamic oxidationStates;
    StandardState standardState;
    String symbol;
    dynamic vanDelWaalsRadius;
    dynamic yearDiscovered;

    Elements({
        this.atomicMass,
        this.atomicNumber,
        this.atomicRadius,
        this.boilingPoint,
        this.bondingType,
        this.cpkHexColor,
        this.density,
        this.electronAffinity,
        this.electronegativity,
        this.electronicConfiguration,
        this.groupBlock,
        this.ionRadius,
        this.ionizationEnergy,
        this.meltingPoint,
        this.name,
        this.oxidationStates,
        this.standardState,
        this.symbol,
        this.vanDelWaalsRadius,
        this.yearDiscovered,
    });

    factory Elements.fromJson(Map<String, dynamic> json) => new Elements(
        atomicMass: json["atomicMass"],
        atomicNumber: json["atomicNumber"],
        atomicRadius: json["atomicRadius"],
        boilingPoint: json["boilingPoint"],
        bondingType: bondingTypeValues.map[json["bondingType"]],
        cpkHexColor: json["cpkHexColor"],
        density: json["density"],
        electronAffinity: json["electronAffinity"],
        electronegativity: json["electronegativity"],
        electronicConfiguration: json["electronicConfiguration"],
        groupBlock: json["groupBlock"],
        ionRadius: json["ionRadius"],
        ionizationEnergy: json["ionizationEnergy"],
        meltingPoint: json["meltingPoint"],
        name: json["name"],
        oxidationStates: json["oxidationStates"],
        standardState: standardStateValues.map[json["standardState"]],
        symbol: json["symbol"],
        vanDelWaalsRadius: json["vanDelWaalsRadius"],
        yearDiscovered: json["yearDiscovered"],
    );

    Map<String, dynamic> toJson() => {
        "atomicMass": atomicMass,
        "atomicNumber": atomicNumber,
        "atomicRadius": atomicRadius,
        "boilingPoint": boilingPoint,
        "bondingType": bondingTypeValues.reverse[bondingType],
        "cpkHexColor": cpkHexColor,
        "density": density,
        "electronAffinity": electronAffinity,
        "electronegativity": electronegativity,
        "electronicConfiguration": electronicConfiguration,
        "groupBlock": groupBlock,
        "ionRadius": ionRadius,
        "ionizationEnergy": ionizationEnergy,
        "meltingPoint": meltingPoint,
        "name": name,
        "oxidationStates": oxidationStates,
        "standardState": standardStateValues.reverse[standardState],
        "symbol": symbol,
        "vanDelWaalsRadius": vanDelWaalsRadius,
        "yearDiscovered": yearDiscovered,
    };
}

enum BondingType { DIATOMIC, ATOMIC, METALLIC, COVALENT_NETWORK, EMPTY }

final bondingTypeValues = new EnumValues({
    "atomic": BondingType.ATOMIC,
    "covalent network": BondingType.COVALENT_NETWORK,
    "diatomic": BondingType.DIATOMIC,
    "": BondingType.EMPTY,
    "metallic": BondingType.METALLIC
});

enum StandardState { GAS, SOLID, LIQUID, EMPTY }

final standardStateValues = new EnumValues({
    "": StandardState.EMPTY,
    "gas": StandardState.GAS,
    "liquid": StandardState.LIQUID,
    "solid": StandardState.SOLID
});

enum YearDiscoveredEnum { ANCIENT }

final yearDiscoveredEnumValues = new EnumValues({
    "Ancient": YearDiscoveredEnum.ANCIENT
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
