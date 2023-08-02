import 'package:flutter/material.dart';

List<Color> colors = [
  Colors.amber,
  Colors.amberAccent,
  Colors.black,
  Colors.pink
];

class AppTheme {
  final int seletectColor;
  AppTheme({this.seletectColor = 0})
      : assert(seletectColor >= 0, 'Selected Color must be greater then 0'),
        assert(seletectColor < colors.length,
            'Selected color mustt be less or equal then ${colors.length - 1}');
  ThemeData getTheme() => ThemeData(
      colorSchemeSeed: colors[seletectColor],
      useMaterial3: true,
      appBarTheme: const AppBarTheme(centerTitle: true));
}
