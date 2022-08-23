import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_date_error.freezed.dart';

@freezed
class StartDateError with _$StartDateError {
  const factory StartDateError.isAfter() = StartDateIsAfter;
}
