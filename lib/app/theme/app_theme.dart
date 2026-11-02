
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_typography.dart';

abstract final class AppTheme {
  static ThemeData get light => _buildLightTheme();

  static ThemeData get dark => _buildDarkTheme();

  static ThemeData _buildLightTheme() {
    final colorScheme = ColorScheme(
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
      foreground: AppColors.foregroundLight,
      mutedForeground: AppColors.mutedForegroundLight,
      border: AppColors.borderLight,
      input: AppColors.inputLight,
      card: AppColors.cardLight,
    );
  }

  static ThemeData _buildDarkTheme() {
    final colorScheme = ColorScheme(
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
      foreground: AppColors.foregroundDark,
      mutedForeground: AppColors.mutedForegroundDark,
      border: AppColors.borderDark,
      input: AppColors.inputDark,
      card: AppColors.cardDark,
    );
  }

  static ThemeData _buildTheme({
    required ColorScheme colorScheme,
    required Color background,
    required Color foreground,
    required Color mutedForeground,
    required Color border,
    required Color input,
    required Color card,
  }) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: AppTypography.fontFamily,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: background,

      textTheme: TextTheme(
        displayLarge: AppTypography.display.copyWith(
          color: foreground,
        ),
        headlineLarge: AppTypography.headline.copyWith(
          color: foreground,
        ),
        titleLarge: AppTypography.title.copyWith(
          color: foreground,
        ),
        titleMedium: AppTypography.titleSmall.copyWith(
          color: foreground,
        ),
        bodyLarge: AppTypography.body.copyWith(
          color: foreground,
        ),
        bodyMedium: AppTypography.bodySmall.copyWith(
          color: foreground,
        ),
        bodySmall: AppTypography.caption.copyWith(
          color: mutedForeground,
        ),
        labelLarge: AppTypography.label.copyWith(
          color: foreground,
        ),
      ),

      cardTheme: CardThemeData(
        color: card,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
          side: BorderSide(
            color: border.withValues(alpha: 0.75),
          ),
        ),
      ),

      dividerTheme: DividerThemeData(
        color: border,
        thickness: 1,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: input.withValues(alpha: 0.35),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
