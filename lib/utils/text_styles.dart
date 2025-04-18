import 'package:flutter/material.dart';
import 'package:portfolio/utils/dim.dart';

class TextStyles {
  static TextStyle heading1 = TextStyle(
    fontSize: Dim.textDim_20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle heading2 = TextStyle(
    fontSize: Dim.textDim_18,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static TextStyle bodyText = TextStyle(
    fontSize: Dim.textDim_16,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );

  static TextStyle subtitle = TextStyle(
    fontSize: Dim.textDim_14,
    fontWeight: FontWeight.w400,
    color: Colors.black87,
  );

  static TextStyle caption = TextStyle(
    fontSize: Dim.textDim_12,
    fontWeight: FontWeight.w300,
    color: Colors.grey,
  );

  static TextStyle button = TextStyle(
    fontSize: Dim.textDim_18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle errorText = TextStyle(
    fontSize: Dim.textDim_14,
    fontWeight: FontWeight.w500,
    color: Colors.red,
  );
}
