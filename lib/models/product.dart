// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    A a;
    A b;

    Welcome({
        required this.a,
        required this.b,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        a: A.fromJson(json["A"]),
        b: A.fromJson(json["B"]),
    );

    Map<String, dynamic> toJson() => {
        "A": a.toJson(),
        "B": b.toJson(),
    };
}

class A {
    bool available;
    String name;
    String picture;
    double price;

    A({
        required this.available,
        required this.name,
        required this.picture,
        required this.price,
    });

    factory A.fromJson(Map<String, dynamic> json) => A(
        available: json["available"],
        name: json["name"],
        picture: json["picture"],
        price: json["price"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "available": available,
        "name": name,
        "picture": picture,
        "price": price,
    };
}
