import 'package:freezed_annotation/freezed_annotation.dart';

part 'end_date_error.freezed.dart';

@freezed
class EndDateError with _$EndDateError {
  const factory EndDateError.isBetween() = EndDateIsBetween;
}
