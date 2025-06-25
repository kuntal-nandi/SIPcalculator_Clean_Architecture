import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.grey[50],
  );
}
