import 'package:biodata_crud/main.dart';
import 'package:flutter/material.dart';

var myThemeAmber = ThemeData().copyWith(
  colorScheme: kColorScheme,
  appBarTheme: AppBarTheme(
      backgroundColor: kColorScheme.onPrimaryContainer,
      foregroundColor: kColorScheme.onPrimary),
  cardTheme: CardTheme(
    color: kColorScheme.secondaryContainer,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: kColorScheme.primaryContainer),
  ),
  textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: kColorScheme.onSecondaryContainer),
      ),
);
