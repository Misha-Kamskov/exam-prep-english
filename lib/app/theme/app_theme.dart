
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_typography.dart';


abstract final class AppTheme {
  static ThemeData get light => _buildLightTheme();

  static ThemeData get dark => _buildDarkTheme();

  static ThemeData _buildLightTheme() {
    const colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primaryLight,
      onPrimary: AppColors.primaryForegroundLight,
      secondary: AppColors.secondaryLight,
      onSecondary: AppColors.secondaryForegroundLight,
      error: AppColors.destructiveLight,
      onError: Colors.white,
      surface: AppColors.cardLight,
      onSurface: AppColors.foregroundLight,
      outline: AppColors.borderLight,
    );

    return _buildTheme(
      colorScheme: colorScheme,
      background: AppColors.backgroundLight,
    );
  }

  static ThemeData _buildDarkTheme() {
    const colorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryDark,
      onPrimary: AppColors.primaryForegroundDark,
      secondary: AppColors.secondaryDark,
      onSecondary: AppColors.secondaryForegroundDark,
      error: AppColors.destructiveDark,
      onError: Colors.white,
      surface: AppColors.cardDark,
      onSurface: AppColors.foregroundDark,
      outline: AppColors.borderDark,
    );

    return _buildTheme(
      colorScheme: colorScheme,
      background: AppColors.backgroundDark,
    );
  }

  static ThemeData _buildTheme({
    required ColorScheme colorScheme,
    required Color background,
  }) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: AppTypography.fontFamily,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: background,
    );
  }
}
