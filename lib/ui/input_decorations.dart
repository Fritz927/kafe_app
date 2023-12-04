import 'package:flutter/material.dart';

class InputDecorations {
   static InputDecoration authInputDecoration(
    {
      required String hintText,
      IconData? suffixIcon,
    }
  ) {
    return  InputDecoration(
      enabledBorder:
      const    UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
      focusedBorder:const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 2),
      ),
      hintText: hintText,
      suffixIcon: suffixIcon != null
       ? Icon(suffixIcon)
       : null,
    );
  }
}
