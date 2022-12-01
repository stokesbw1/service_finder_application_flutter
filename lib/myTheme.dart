import 'package:flutter/material.dart';

class ServiceProviderThemes {
  static final _lightColorTheme = const ColorScheme.light().copyWith(
    primary: const Color(0xFFffffff),
    onPrimary: const Color(0xFF000000),
    secondary: const Color(0xFF10324a),
    onSecondary: const Color(0xFFffffff),
  );

  static final _darkColorTheme = const ColorScheme.dark().copyWith(
    primary: const Color(0xFFcccccc),
    onPrimary: const Color(0xFF000000),
    secondary: const Color(0xFF000a22),
    onSecondary: const Color(0xFFffffff),
  );

  static final darkTheme = ThemeData(
    // scaffoldBackgroundColor: const Color(0xFFcccccc),
    colorScheme: _darkColorTheme,
  );

  static final lightTheme = ThemeData(
    // scaffoldBackgroundColor: const Color(0xFF10324a),
    colorScheme: _lightColorTheme,
  );
}
