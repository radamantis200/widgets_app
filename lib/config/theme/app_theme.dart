import 'package:flutter/material.dart';

List<Color> listColors = [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {
  final int seletectColor;
  final bool isDarkMode;
  AppTheme({this.isDarkMode = false, this.seletectColor = 0})
      : assert(seletectColor >= 0, 'Selected Color must be greater then 0'),
        assert(seletectColor < listColors.length,
            'Selected color mustt be less or equal then ${listColors.length - 1}');
  ThemeData getTheme() => ThemeData(
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: listColors[seletectColor],
      useMaterial3: true,
      appBarTheme: const AppBarTheme(centerTitle: true));

  AppTheme copyWith({int? seletectColor, bool? isDarkMode}) {
    return AppTheme(
      seletectColor: seletectColor ?? this.seletectColor,
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}
