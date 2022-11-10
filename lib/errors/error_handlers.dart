
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_handlers.freezed.dart';

@freezed
abstract class ApiFailure with _$ApiFailure{
  const ApiFailure._();
  const factory ApiFailure.serverError( String msg) = ServerError;
  const factory ApiFailure.networkError( String msg) = NetworkError;
  const factory ApiFailure.unexpectedError(String msg) = UnexpectedError;
}