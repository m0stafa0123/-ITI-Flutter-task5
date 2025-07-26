import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';

class AppThems {
  static ThemeData lightThen = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: AppColors.mainColor,

    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 30,
      backgroundColor: AppColors.mainColor, 
      elevation: 4,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white), // لون أيقونة الرجوع مثلاً
      titleTextStyle: TextStyle(
        fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      ),
    ),

    textTheme: TextTheme(
      headlineMedium: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      headlineSmall: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
      bodyMedium: TextStyle(fontSize: 16, color: AppColors.blackApp),
      labelLarge: TextStyle(fontSize: 16, color: Colors.deepPurple),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.purple,
        foregroundColor: AppColors.whiteApp,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFFF3F3F3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.deepPurple),
      ),
      labelStyle: TextStyle(color: const Color.fromARGB(255, 82, 75, 93)),
      hintStyle: TextStyle(color: Colors.grey),
    ),
  );
}
