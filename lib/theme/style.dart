import 'package:flutter/material.dart';
import 'package:burger_king/theme/color.dart';

class Style {
  static TextStyle typeFoodSelected = const TextStyle(
      fontSize: 14,
      color: orange,
      fontFamily: "AnekTelugu",
      fontWeight: FontWeight.bold);
  static TextStyle typeFoodNotSelected = TextStyle(
      fontSize: 12,
      color: subBlack,
      fontFamily: "AnekTelugu",
      fontWeight: FontWeight.w200);
  static Container typeFoodSelectedContainer = Container(
      height: 3,
      width: 40,
      decoration: const BoxDecoration(
          color: orange, borderRadius: BorderRadius.all(Radius.circular(20))));
}
