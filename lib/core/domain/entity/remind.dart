import 'package:freezed_annotation/freezed_annotation.dart';

part 'remind.freezed.dart';

@freezed
class Remind with _$Remind {
  const factory Remind.fiveMinutesEarly() = RemindFiveMinutesEarly;
  const factory Remind.tenMinutesEarly() = RemindTenMinutesEarly;
  const factory Remind.fifteenMinutesEarly() = RemindFifteenMinutesEarly;
  const factory Remind.twentyMinutesEarly() = RemindTwentyMinutesEarly;
}
