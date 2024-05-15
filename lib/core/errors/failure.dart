import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServiceFailure extends Failure {
  ServiceFailure(String errorMessage) : super(errorMessage); // تم تعديل هنا

  factory ServiceFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServiceFailure('Connection timeout with API service');
      case DioErrorType.sendTimeout:
        return ServiceFailure('Send timeout with API service');
      case DioErrorType.receiveTimeout:
        return ServiceFailure('Receive timeout with API service');
      case DioErrorType.badResponse:
        return ServiceFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioErrorType.cancel:
        if (dioError.message!.contains('socketExption')) {
          return ServiceFailure('Request to API service was cancelled');
        } else {
          return ServiceFailure('Request to API service was cancelled');
        }
      case DioErrorType.unknown:
        return ServiceFailure('An unexpected error occurred with API service');
      default:
        return ServiceFailure('An unknown error occurred with API service');
    }
  }

  factory ServiceFailure.fromResponse(int? statusCode, dynamic response) {
    final errorMessage = response['error']['message'];
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServiceFailure(errorMessage ?? 'Unauthorized access');
    } else if (statusCode == 404) {
      return ServiceFailure('Server not found');
    } else if (statusCode == 500) {
      if (errorMessage != null) {
        return ServiceFailure(errorMessage);
      } else {
        return ServiceFailure('Internal server error');
      }
    } else {
      return ServiceFailure('Oops, something went wrong');
    }
  }
}
