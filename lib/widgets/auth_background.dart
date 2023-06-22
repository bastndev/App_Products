import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
//  TODO:"Container" to "SizedBox"
    return  SizedBox(
      // color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          // 🐑
          const _PurpleBox(),
          // 🐱‍🏍
          const _SafeArea(),

          child,
        ],
      ),
    );
  }
}

//  ---- --- -- -- ---- --- -- SafeArea 🐱‍🏍
class _SafeArea extends StatelessWidget {
  const _SafeArea();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin:const EdgeInsets.only(top: 30),
        child:const Icon(
          Icons.person_pin,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}

// --- --- -- -- -- -- -- - Box Purple
class _PurpleBox extends StatelessWidget {
  const _PurpleBox();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _purpleBackground(),
      child: const Stack(
        children: [
          // -- --- --- 🐑🐑
          Positioned(top: 30, left: 70, child: _Bubble()),
          Positioned(top: -15, left: 320, child: _Bubble()),
          Positioned(top: -50, left: -50, child: _Bubble()),
          Positioned(bottom: 10, left: -40, child: _Bubble()),
          Positioned(bottom: 20, left: 270, child: _Bubble()),
          Positioned(bottom: -50, left: 120, child: _Bubble()),
        ],
      ),
    );
  }

// --- --- -- -- -- -- -- - Fading Color 🐑
  BoxDecoration _purpleBackground() => const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(63, 63, 156, 1),
            Color.fromRGBO(90, 70, 178, 1),
          ],
        ),
      );
}

// --- --- -- -- -- -- -- -- Circles 🐑🐑
class _Bubble extends StatelessWidget {
  const _Bubble();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(255, 255, 255, 0.06),
      ),
    );
  }
}
