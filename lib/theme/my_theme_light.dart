import 'package:flutter/material.dart';

var kLightColorScheme = ColorScheme.fromSeed(seedColor: Colors.lightBlue);

var myThemeLight = ThemeData.light().copyWith(
  brightness: Brightness.light,
  colorScheme: kLightColorScheme,
  appBarTheme: AppBarTheme(
      backgroundColor: kLightColorScheme.onPrimaryContainer,
      foregroundColor: kLightColorScheme.onPrimary),
  cardTheme: CardTheme(
    color: kLightColorScheme.secondaryContainer,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: kLightColorScheme.primaryContainer),
  ),
  textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: kLightColorScheme.onSecondaryContainer),
        titleSmall: TextStyle(color: kLightColorScheme.onSecondary),
      ),
  bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: kLightColorScheme.onPrimaryContainer),
);
