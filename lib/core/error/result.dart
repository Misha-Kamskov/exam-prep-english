
import '../error/app_exception.dart';
import 'app_warning.dart';

sealed class Result<T> {
  const Result();
}

final class Success<T> extends Result<T> {
  const Success(
      this.data, {
        this.warning,
      });

  final T data;
  final AppWarning? warning;
}

final class Failure<T> extends Result<T> {
  const Failure(this.exception);

  final AppException exception;
}

extension ResultExtension<T> on Result<T> {
  R when<R>({
    required R Function(Success<T> result) success,
    required R Function(AppException exception) failure,
  }) {
    return switch (this) {
      Success<T>() => success(this as Success<T>),
      Failure<T>(exception: final exception) => failure(exception),
    };
  }
}