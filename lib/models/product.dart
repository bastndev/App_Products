// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  A a;
  A b;

  Product({
    required this.a,
    required this.b,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        a: A.fromJson(json["A"]),
        b: A.fromJson(json["B"]),
      );

  Object? get name => null;

  Map<String, dynamic> toJson() => {
        "A": a.toJson(),
        "B": b.toJson(),
      };

  static fromMap(value) {}
}

class A {
  bool available;
  String name;
  String picture;
  double price;
  String? id;

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
