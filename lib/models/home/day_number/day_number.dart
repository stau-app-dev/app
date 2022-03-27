import 'package:freezed_annotation/freezed_annotation.dart';
part 'day_number.freezed.dart';
part 'day_number.g.dart';

@freezed
class DayNumber with _$DayNumber {
  const factory DayNumber({
    int? dayNumber,
  }) = _DayNumber;
  factory DayNumber.fromJson(Map<String, dynamic> json) =>
      _$DayNumberFromJson(json);
}
