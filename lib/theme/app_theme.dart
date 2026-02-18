import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // Colors
  static const Color primaryDark = Color(0xFF1A1A2E);
  static const Color primaryGreen = Color(0xFF2ECC71);
  static const Color accentBlue = Color(0xFF4A90E2);
  static const Color background = Color(0xFFF2F2F7);
  static const Color cardBackground = Colors.white;
  static const Color tileBackground = Color(0xFFF7F7F7);
  static const Color tileBorder = Color(0xFFEEEEEE);
  static const Color divider = Color(0xFFE5E5E5);
  static const Color textPrimary = Colors.black;
  static const Color textSecondary = Colors.grey;
  static const Color textOnDark = Colors.white;
  static const Color textOnDarkMuted = Colors.white70;

  // Text Styles
  static const TextStyle headingLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: textPrimary,
  );

  static const TextStyle sectionLabel = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: textSecondary,
    letterSpacing: 0.5,
  );

  static const TextStyle statValue = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: textPrimary,
  );

  static const TextStyle statLabel = TextStyle(
    fontSize: 13,
    color: textSecondary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    color: textPrimary,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 13,
    color: textSecondary,
  );

  // Card Decoration
  static BoxDecoration cardDecoration = BoxDecoration(
    color: cardBackground,
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.04),
        blurRadius: 8,
        offset: const Offset(0, 2),
      ),
    ],
  );

  static ThemeData get lightTheme => ThemeData(
        scaffoldBackgroundColor: background,
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          backgroundColor: cardBackground,
          elevation: 0,
          iconTheme: IconThemeData(color: textPrimary),
          titleTextStyle: TextStyle(
            color: textPrimary,
            fontWeight: FontWeight.w600,
            fontSize: 17,
            fontFamily: 'Roboto',
          ),
        ),
      );
}
