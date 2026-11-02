
abstract class AppException implements Exception {

  const AppException({
    required this.message,
    this.code,
  });

  final String message;
  final String? code;

  @override
  String toString() {
    return '$runtimeType: $message';
  }
}

class NetworkException extends AppException {
  const NetworkException({
    required super.message,
    super.code,
  });
}


class ServerException extends AppException {
  const ServerException({
    required super.message,
    super.code,
    this.statusCode,
  });

  final int? statusCode;
}

class ParsingException extends AppException {
  const ParsingException({
    required super.message,
    super.code,
  });
}

class UnknownException extends AppException {
  const UnknownException({
    required super.message,
    super.code,
  });
}
