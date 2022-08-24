import 'package:freezed_annotation/freezed_annotation.dart';

part 'repeat.freezed.dart';

@freezed
class Repeat with _$Repeat {
  const factory Repeat.none() = RepeatNone;
  const factory Repeat.daily() = RepeatDaily;
  const factory Repeat.weekly() = RepeatWeekly;
  const factory Repeat.monthly() = RepeatMonthly;
}
