import 'package:app_products/models/models.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

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
            _backgroundImage(product.picture),
            _productDetails(
              title: product.name,
              subTitle: product.id!,
            ),
            Positioned(
              top: 0,
              right: 0,
              child: _PriceTag(product.price),
            ),
            if (product.available)
              Positioned(
                top: 0,
                left: 0,
                child: _NotAvailable(),
              )
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

class _NotAvailable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 55,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'No available ',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _PriceTag extends StatelessWidget {
  final double price;

  const _PriceTag(this.price);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 55,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '\$$price',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _backgroundImage extends StatelessWidget {
  final String? url;

  const _backgroundImage(this.url);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: SizedBox(
        width: double.infinity,
        height: 350,
        child: FadeInImage(
          //--- -FIXME: agregar producto no disponible
          placeholder: const AssetImage('assets/image/jar-loading.gif'),
          image: NetworkImage(url!),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _productDetails extends StatelessWidget {
  final String title;
  final String subTitle;

  const _productDetails({required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        width: double.infinity,
        height: 70,
        decoration: _buildBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              subTitle,
              style: const TextStyle(fontSize: 14, color: Colors.white),
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
