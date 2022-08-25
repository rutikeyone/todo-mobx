import 'package:freezed_annotation/freezed_annotation.dart';

part 'remind.freezed.dart';
part 'remind.g.dart';

@freezed
class Remind with _$Remind {
  const factory Remind.fiveMinutesEarly() = RemindFiveMinutesEarly;
  const factory Remind.tenMinutesEarly() = RemindTenMinutesEarly;
  const factory Remind.fifteenMinutesEarly() = RemindFifteenMinutesEarly;
  const factory Remind.twentyMinutesEarly() = RemindTwentyMinutesEarly;

  factory Remind.fromJson(Map<String, dynamic> json) => _$RemindFromJson(json);
}
