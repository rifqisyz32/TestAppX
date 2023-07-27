import 'package:flutter/material.dart';

ThemeData terang = ThemeData(
  appBarTheme: AppBarTheme(
    centerTitle: true,
    elevation: 0,
  ),
  brightness: Brightness.light,
  fontFamily: "SF-Pro-Display",
  primarySwatch: Colors.deepPurple,
  listTileTheme: ListTileThemeData(
    contentPadding: EdgeInsets.all(8),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 98,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    displayMedium: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 61,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    displaySmall: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 49,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
    headlineMedium: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 35,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headlineSmall: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 24,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
    titleLarge: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    titleMedium: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    titleSmall: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyLarge: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    bodySmall: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    labelLarge: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    labelSmall: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStatePropertyAll(
        EdgeInsets.all(16),
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.all(4),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
  ),
);

ThemeData gelap = ThemeData(
  appBarTheme: AppBarTheme(
    centerTitle: true,
    elevation: 0,
  ),
  brightness: Brightness.dark,
  fontFamily: "SF-Pro-Display",
  primarySwatch: Colors.deepPurple,
  listTileTheme: ListTileThemeData(
    contentPadding: EdgeInsets.all(8),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 98,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    displayMedium: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 61,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    displaySmall: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 49,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
    headlineMedium: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 35,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headlineSmall: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 24,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
    titleLarge: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    titleMedium: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    titleSmall: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyLarge: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    bodySmall: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    labelLarge: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    labelSmall: TextStyle(
      fontFamily: "SF-Pro-Display",
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStatePropertyAll(
        EdgeInsets.all(16),
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.all(4),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
  ),
);
