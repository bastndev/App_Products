import 'dart:convert';

import 'package:app_products/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductService extends ChangeNotifier {
  final String _baseUrl = 'flutter-varios-3a863-default-rtdb.firebaseio.com';

  final List<Product> products = [];
  bool isLoading = true;

  ProductService() {
    loadProducts();
  }

  //-TODO: <List<Product>>
  Future loadProducts() async {
    final url = Uri.https(_baseUrl, 'Products.json');
    final rest = await http.get(url);

    final Map<String, dynamic> productsMap = json.decode(rest.body);

    productsMap.forEach((key, value){
      final tempProduct = Product.fromMap( value);
      tempProduct.id = key;
    });

  }
}
