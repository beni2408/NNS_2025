import 'package:flutter/material.dart';

class AppTheme {

  // Color System
  static const Color primaryColor = Color(0xFF2563EB);
  static const Color secondaryColor = Color(0xFF10B981);
  static const Color errorColor = Color(0xFFEF4444);
  static const Color warningColor = Color(0xFFF59E0B);
  static const Color successColor = Color(0xFF10B981);

  // Background Colors
  static const Color backgroundColor = Color(0xFFF8FAFC);
  static const Color surfaceColor = Color(0xFFFFFFFF);
  static const Color cardColor = Color(0xFFFFFFFF);

  // Text Colors
  static const Color primaryTextColor = Color(0xFF1F2937);
  static const Color secondaryTextColor = Color(0xFF6B7280);
  static const Color disabledTextColor = Color(0xFF9CA3AF);

  // Spacing System (8px base unit)
  static const double spacingXs = 4.0;   // 0.5x
  static const double spacingSm = 8.0;   // 1x
  static const double spacingMd = 16.0;  // 2x
  static const double spacingLg = 24.0;  // 3x
  static const double spacingXl = 32.0;  // 4x
  static const double spacingXxl = 48.0; // 6x

  // Border Radius
  static const double borderRadiusSm = 4.0;
  static const double borderRadiusMd = 8.0;
  static const double borderRadiusLg = 12.0;
  static const double borderRadiusXl = 16.0;

  // Typography
  static const TextTheme textTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      height: 1.2,
      color: primaryTextColor,
    ),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      height: 1.3,
      color: primaryTextColor,
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      height: 1.4,
      color: primaryTextColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: primaryTextColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: secondaryTextColor,
    ),
  );

  // Theme Data
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.light,
      ),
      textTheme: textTheme,
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: surfaceColor,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: primaryTextColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusMd),
          ),
        ),
      ),
    );
  }
}