import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
      child: Container(
        decoration: _buildBoxDecoration(),
        width: double.infinity,
        height: 370,
        child: const ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: FadeInImage(
            image: NetworkImage('http://via.placeholder.com/300x300/pruple'),
            placeholder: AssetImage('assets/image/jar-loading.gif'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
        color: Colors.red,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      );
}
