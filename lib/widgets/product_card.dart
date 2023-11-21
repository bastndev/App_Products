import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: const EdgeInsets.only(top: 30, bottom: 40),
        width: double.infinity,
        height: 350,
        decoration: _cardDecoration(),
        child: Stack(
          children: [
            _backgroundImage(),
          ],
        ),
      ),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(0, 8),
          blurRadius: 10,
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class _backgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 350,
      child: FadeInImage(
        placeholder: AssetImage('assets/image/jar-loading.gif'),
        image: NetworkImage('https://via.placeholder.com/350x350/f6f6f6'),
      ),
    );
  }
}
