import 'package:talker_flutter/talker_flutter.dart';

import 'app_logger.dart';

class AppTalkerLogger implements AppLogger {
  AppTalkerLogger(this._talker);

  final Talker _talker;

  @override
  void debug(String message) {
    _talker.debug(message);
  }

  @override
  void info(String message) {
    _talker.info(message);
  }

  @override
  void warning(String message) {
    _talker.warning(message);
  }

  @override
  void error(
      String message, {
        Object? error,
        StackTrace? stackTrace,
      }) {
    if (error != null) {
      _talker.handle(error, stackTrace, message);
    } else {
      _talker.error(message);
    }
  }
}