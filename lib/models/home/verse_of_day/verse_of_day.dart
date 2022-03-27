import 'package:freezed_annotation/freezed_annotation.dart';
part 'verse_of_day.freezed.dart';
part 'verse_of_day.g.dart';

@freezed
class VerseOfDay with _$VerseOfDay {
  const factory VerseOfDay({
    required String verseOfDay,
  }) = _VerseOfDay;
  factory VerseOfDay.fromJson(Map<String, dynamic> json) =>
      _$VerseOfDayFromJson(json);
}
