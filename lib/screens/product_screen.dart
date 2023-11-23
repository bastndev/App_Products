import 'package:app_products/ui/input_decorations.dart';
import 'package:flutter/material.dart';
import 'package:app_products/widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                //--- --- --- background Color
                const ProductImage(),
                //--- --- --- Buttons
                Positioned(
                  top: 50,
                  left: 25,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 33,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 25,
                  child: IconButton(
                    onPressed: () {
                      //-TODO:  Camera gallery
                    },
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      size: 33,
                      color: Colors.white,
                    ),
                  ),
                ),
                //--- --- --- Formulary
                _productForm(),

                const SizedBox(height: 100)
              ],
            )
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _productForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 440, horizontal: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        width: double.infinity,
        // height: 200,
        decoration: _buildBoxDecoration(),
        child: Form(
          child: Column(
            children: [
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecorations.authInputDecoration(
                  hintText: 'Product Name',
                  labelText: 'Name:',
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecorations.authInputDecoration(
                  hintText: '\$0000',
                  labelText: 'Price:',
                ),
              ),
              const SizedBox(height: 10),
              SwitchListTile.adaptive(
                value: true,
                title: const Text('Avaible'),
                activeColor: Colors.orange,
                onChanged: (value) {
                  //-TODO: pending
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(0, 5),
            blurRadius: 5,
          ),
        ],
      );
}
