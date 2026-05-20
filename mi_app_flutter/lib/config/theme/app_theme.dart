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

  AppTheme({this.selectColor = 0})
    : assert(selectColor >= 0, 'Select color must be greater the 0'),
      assert(
        selectColor < colorList.length,
        'Select color must be less then ${colorList.length}',
      );

  ThemeData getTheme() => ThemeData(
    // useMaterial3: true,
    colorSchemeSeed: colorList[selectColor],
    appBarTheme: AppBarTheme(centerTitle: true),
  );
}
