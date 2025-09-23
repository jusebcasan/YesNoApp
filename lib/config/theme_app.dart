
import 'package:flutter/material.dart';

const Color _customColor = Color(0x002AECB2);

const List<Color> _ColorTheme = [
  _customColor,
  Colors.teal,
  Colors.pink,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange
];

class AppTheme {

  final int selectColor;

  AppTheme({this.selectColor = 0}) : assert(selectColor >= 0 && selectColor <= _ColorTheme.length -1, 'Color msut be between 0 and ${_ColorTheme.length}');

  ThemeData theme(){
    return ThemeData(
      colorSchemeSeed: _ColorTheme[selectColor]
      );
  }

}