import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_error.freezed.dart';

@freezed
class FormError with _$FormError {
  const factory FormError.nullOrEmpty() = FormErrorNullOrError;
  const factory FormError.invalid() = FormErrorInvalid;
}
