import 'package:flutter/material.dart';
import 'package:app_products/widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ProductImage()
              ],
            )

          ],
        ),
      ),
    );
  }
}
