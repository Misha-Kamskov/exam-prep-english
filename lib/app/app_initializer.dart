import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../core/logging/app_logger.dart';
import '../core/logging/talker_logger.dart';
import 'di/injection.dart';

class AppInitializer {
  AppInitializer._();

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    await _systemUiInit();
    await _loggingInit();
    await _initDI();

    _setupErrorHandlers();
  }

  static Future<void> _systemUiInit() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  static Future<void> _loggingInit() async {
    if (!getIt.isRegistered<Talker>()) {
      getIt.registerSingleton<Talker>(TalkerFlutter.init());
    }
    if (!getIt.isRegistered<AppLogger>()) {
      getIt.registerLazySingleton<AppLogger>(
        () => AppTalkerLogger(getIt<Talker>()),
      );
    }
  }

  static Future<void> _initDI() async {
    configureDependencies();
  }

  static void _setupErrorHandlers() {
    final logger = getIt<AppLogger>();

    FlutterError.onError = (details) {
      logger.error(
        'FlutterError: ${details.exceptionAsString()}',
        error: details.exception,
        stackTrace: details.stack,
      );
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      logger.error('Uncaught platform error', error: error, stackTrace: stack);
      return true;
    };
  }
}
