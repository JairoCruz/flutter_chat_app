import 'package:flutter/material.dart';

// el guion bajo (_) ante el nombre de una variable indica que es privada unicamente para
// la clase
const Color _customColor = Color(0xFF49149F);

const List<Color> _colorTheme = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {

  final int selectedColor;

  // Constructor
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorTheme.length - 1,
            'Colors must be between 0 and ${_colorTheme.length}');

// En main devolvemos este tema, este metodo es el importante de esta clase
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedColor],
      // scaffoldBackgroundColor: Colors.orange[100]
    );
  }
}
