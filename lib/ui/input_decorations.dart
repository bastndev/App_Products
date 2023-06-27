import 'package:flutter/material.dart';

class InputDecorations {

  static InputDecoration authInputDecoration({
    required String hintText,
    required String labelText,
    IconData? prefixIcon
  }) {
    return InputDecoration(
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.orangeAccent,
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.orange,
          width: 2,
        ),
      ),
      labelText: labelText,
      hintText: hintText,
      labelStyle: const TextStyle(
        color: Colors.grey,
      ),
      prefixIcon: prefixIcon != null
      ?Icon(prefixIcon, color: Colors.orange)
      :null
    );
  }
}
