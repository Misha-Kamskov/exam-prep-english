import 'dart:async';
import 'dart:io';

import '../app_exception.dart';

abstract final class ExceptionMapper {
  static AppException map(Object error) {
    return switch (error) {
      SocketException() => NetworkException(
        message: error.message,
        code: 'network_unavailable',
      ),

      TimeoutException() => NetworkException(
        message: error.message ?? 'Request timeout',
        code: 'network_timeout',
      ),

      FormatException() => ParsingException(
        message: error.message,
        code: 'parsing_error',
      ),

      _ => UnknownException(
        message: error.toString(),
        code: 'unknown_error',
      ),
    };
  }
}