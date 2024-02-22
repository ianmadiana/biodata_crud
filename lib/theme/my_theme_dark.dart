import 'package:biodata_crud/main.dart';
import 'package:flutter/material.dart';

var myThemeDark = ThemeData.dark().copyWith(
  brightness: Brightness.dark,
  colorScheme: kDarkColorScheme,
  appBarTheme: AppBarTheme(
      backgroundColor: kDarkColorScheme.onPrimaryContainer,
      foregroundColor: kDarkColorScheme.onPrimary),
  cardTheme: CardTheme(
    color: kDarkColorScheme.secondaryContainer,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: kDarkColorScheme.primaryContainer),
  ),
  textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: kDarkColorScheme.onSecondaryContainer),
        titleSmall: TextStyle(color: kDarkColorScheme.onSecondary),
      ),
  bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: kDarkColorScheme.onPrimaryContainer),
);
