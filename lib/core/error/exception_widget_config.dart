import 'package:flutter/material.dart';

class ExceptionWidgetConfig {
  final IconData icon;
  final String title;
  final String message;
  final Color? iconColor;
  final String actionLabel;

  const ExceptionWidgetConfig({
    required this.icon,
    required this.title,
    required this.message,
    this.iconColor,
    this.actionLabel = 'Повторити',
  });
}