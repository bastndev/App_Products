import 'package:app_products/models/models.dart';
import 'package:flutter/material.dart';

class ProductService extends ChangeNotifier {
  final String _baseUrl = 'flutter-varios-3a863-default-rtdb.firebaseio.com';

  final List<Product> products = [];
}
