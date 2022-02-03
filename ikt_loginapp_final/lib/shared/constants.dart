import 'package:flutter/material.dart';

InputDecoration textInputDecoration(String hint) {
  return InputDecoration(
    hintText: hint,
    fillColor: Colors.white,
    filled: true,
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2.0)
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.pink, width: 2.0)
    ),
  );
}
