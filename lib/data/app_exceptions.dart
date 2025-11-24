// exceptions/app_exceptions.dart

class AppExceptions implements Exception {
  final String? _message;
  final String? _prefix;

  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

// Specific Exceptions

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, 'No Internet ');
}

class RequestTimeOutException extends AppExceptions {
  RequestTimeOutException([String? message]) : super(message, 'Request Time Out ');
}

class ServerException extends AppExceptions {
  ServerException([String? message]) : super(message, 'Server Error ');
}

class InvalidUrlException extends AppExceptions {
  InvalidUrlException([String? message]) : super(message, 'Invalid URL ');
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]) : super(message, 'Error While Fetching Data ');
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message]) : super(message, 'Bad Request ');
}

class UnauthorizedException extends AppExceptions {
  UnauthorizedException([String? message]) : super(message, 'Unauthorized Access ');
}