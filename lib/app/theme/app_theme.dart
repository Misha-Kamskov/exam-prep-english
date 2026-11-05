import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_typography.dart';

abstract final class AppTheme {
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    colorScheme: const ColorScheme.light(
      surface: AppColors.cardLight,
      onSurface: AppColors.foregroundLight,
      primary: AppColors.primaryLight,
      onPrimary: AppColors.primaryForegroundLight,
      outline: AppColors.borderLight,
    ),
  );

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    canvasColor: AppColors.backgroundDark,
    colorScheme: const ColorScheme.dark(
      surface: AppColors.cardDark,
      onSurface: AppColors.foregroundDark,
      primary: AppColors.primaryDark,
      onPrimary: AppColors.primaryForegroundDark,
      outline: AppColors.borderDark,
    ),
  );
}