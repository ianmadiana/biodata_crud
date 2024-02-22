import 'package:biodata_crud/main.dart';
import 'package:flutter/material.dart';

// theme data object
var myThemeIndigo = ThemeData().copyWith(
  colorScheme: kIndigoColorScheme,
  appBarTheme: AppBarTheme(
      backgroundColor: kIndigoColorScheme.onPrimaryContainer,
      foregroundColor: kIndigoColorScheme.onPrimary),
  cardTheme: CardTheme(
    color: kIndigoColorScheme.secondaryContainer,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: kIndigoColorScheme.primaryContainer),
  ),
  textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: kIndigoColorScheme.onSecondaryContainer),
      ),
);
