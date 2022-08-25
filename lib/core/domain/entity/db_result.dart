import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_result.freezed.dart';

@freezed
class DbResult with _$DbResult {
  const factory DbResult.success() = DbResultSuccess;
  const factory DbResult.failure() = DbResultFailure;
}
