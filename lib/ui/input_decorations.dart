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
          color: Colors.purple,
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.deepPurple,
          width: 2,
        ),
      ),
      labelText: labelText,
      hintText: hintText,
      labelStyle: const TextStyle(
        color: Colors.grey,
      ),
      prefixIcon: prefixIcon != null
      ?Icon(prefixIcon, color: Colors.deepPurple)
      :null
    );
  }
}
