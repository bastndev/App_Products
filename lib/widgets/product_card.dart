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
          alignment: Alignment.bottomLeft,
          children: [
            _backgroundImage(),
            _productDetails(),
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: const SizedBox(
        width: double.infinity,
        height: 350,
        child: FadeInImage(
          placeholder: AssetImage('assets/image/jar-loading.gif'),
          image: NetworkImage(
              'https://i.ytimg.com/vi/VdsJeyRhSWw/maxresdefault.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _productDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        width: double.infinity,
        height: 70,
        decoration: _buildBoxDecoration(),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Mayer 2023',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              'new Meta now',
              style: TextStyle(fontSize: 14, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

//-FIXME: this is bottom cube or box
  BoxDecoration _buildBoxDecoration() => const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      );
}
