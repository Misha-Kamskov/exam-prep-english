abstract class AppWarning {
  const AppWarning({
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

class RefreshWarning extends AppWarning {
  const RefreshWarning({
    required super.message,
    super.code,
  });
}