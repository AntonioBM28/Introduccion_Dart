import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.teal,
  Colors.blue,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.red,
  Colors.green,
  Colors.yellow,
];

class AppTheme {
  final int selectColor;
  final bool isDarkMode;

  AppTheme({
    this.selectColor = 0,
    this.isDarkMode = false,
  })
    : assert(selectColor >= 0, 'Select color must be greater the 0'),
      assert(
        selectColor < colorList.length,
        'Select color must be less then ${colorList.length}',
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectColor],
    appBarTheme: const AppBarTheme(centerTitle: true),
  );
}
