import 'package:food_recipe_demo/src/common/resources/strings.dart';

abstract class AppError {
  final Exception exception;
  final bool sendReport;

  const AppError(
    this.exception, {
    this.sendReport = true,
  });

  String get errorMessage;
}

class DefaultError extends AppError {
  final String? additionalMessageString;

  DefaultError.withPrefix({
    required String exceptionInfo,
    required String stackPrefix,
  }) : this(exception: Exception("$stackPrefix: $exceptionInfo"));

  const DefaultError({
    required Exception exception,
    this.additionalMessageString,
  }) : super(exception);

  @override
  String get errorMessage => additionalMessageString != null
      ? AppStrings.defaultErrorMessageWithInfo(additionalMessageString!)
      : AppStrings.defaultErrorMessage;
}

class NoInternetConnectionError extends NetworkError {
  NoInternetConnectionError()
      : super(
          errorMessageString: AppStrings.noInternetErrorMessage,
          sendReport: false,
        );
}

class ServerUnavailableError extends NetworkError {
  ServerUnavailableError({int? code})
      : super(
            errorMessageString: code != null
                ? AppStrings.noServerConnectionWithCodeErrorMessage(code)
                : AppStrings.noServerConnectionErrorMessage);
}

class NetworkError extends AppError {
  final String? errorMessageString;

  NetworkError({
    this.errorMessageString,
    bool sendReport = true,
  }) : super(
          Exception(errorMessageString ?? AppStrings.networkError),
          sendReport: sendReport,
        );

  @override
  String get errorMessage => errorMessageString ?? AppStrings.defaultErrorMessage;
}
