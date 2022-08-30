import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice.freezed.dart';
part 'notice.g.dart';

@freezed
class Notice with _$Notice {
  const factory Notice({
    required int id,
    required int taskId,
    required String body,
    required String title,
    @Default(false) bool isRemind,
  }) = _Notice;

  factory Notice.fromJson(Map<String, Object?> json) => _$NoticeFromJson(json);
}
