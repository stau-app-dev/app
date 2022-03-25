import 'package:freezed_annotation/freezed_annotation.dart';
part 'day_info.freezed.dart';
part 'day_info.g.dart';

@freezed
class DayInfo with _$DayInfo {
  const factory DayInfo({
    required int dayNumber,
    required bool isSnowDay,
  }) = _DayInfo;
  factory DayInfo.fromJson(Map<String, dynamic> json) =>
      _$DayInfoFromJson(json);
}
