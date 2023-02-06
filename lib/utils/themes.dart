import 'package:flutter/material.dart';

class Themes {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: const Color(0xFF2A62FF),
    secondaryHeaderColor: const Color(0xFFFBD702),
    primaryColorDark: const Color(0xFFA8A8A8),
    primaryColorLight: const Color(0xFFD5D5D5),
    canvasColor: const Color(0xFF222222),
    indicatorColor: const Color(0xFFFBD98C),
    errorColor: const Color(0xFFD93C3D),
    highlightColor: const Color(0xFF49BD6A),
    disabledColor: Colors.grey.shade400,
    hintColor: Colors.grey
  );
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.black54,
    primaryColor: const Color(0xFF2A62FF),
    secondaryHeaderColor: const Color(0xFFFBD702),
    primaryColorDark: const Color(0xFFA8A8A8),
    primaryColorLight: const Color(0xFFD7D7FF),
    canvasColor: const Color(0xFFBABABA),
    indicatorColor: const Color(0xFFFBD98C),
    errorColor: const Color(0xFFD93C3D),
    highlightColor: const Color(0xFF49BD6A),
    disabledColor: Colors.grey.shade800,
    hintColor: Colors.grey.shade600,
  );
}