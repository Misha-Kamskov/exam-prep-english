import 'package:exam_prep_english/core/error/app_exception.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../exception_widget_config.dart';

abstract final class ExceptionUiMapper {
  static ExceptionWidgetConfig map(AppException exception, ColorScheme colors) {
    return switch (exception) {
      NetworkException() => ExceptionWidgetConfig(
        icon: LucideIcons.wifiOff,
        title: 'Немає підключення',
        message: 'Перевірте підключення до інтернету.',
        iconColor: colors.error,
      ),

      ServerException() => ExceptionWidgetConfig(
        icon: LucideIcons.serverCrash,
        title: 'Помилка сервера',
        message: 'Спробуйте повторити спробу пізніше.',
        iconColor: colors.error,
      ),

      ParsingException() => ExceptionWidgetConfig(
        icon: LucideIcons.fileWarning,
        title: 'Помилка даних',
        message: 'Не вдалося обробити отримані дані.',
        iconColor: colors.error,
      ),

      UnknownException() => ExceptionWidgetConfig(
        icon: LucideIcons.circleAlert,
        title: 'Щось пішло не так',
        message: 'Виникла непередбачена помилка.',
        iconColor: colors.error,
      ),
    };
  }
}
