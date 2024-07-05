import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        textTheme: const TextTheme(),
        scaffoldBackgroundColor: _LightColor().backgroundColor);
  }
}

class _LightColor {
  final Color backgroundColor = const Color(0xFFF6F5F5);
}
