import 'package:freezed_annotation/freezed_annotation.dart';
part 'spirit_meters.freezed.dart';
part 'spirit_meters.g.dart';

@freezed
class SpiritMeters with _$SpiritMeters {
  const factory SpiritMeters({
    required double nine,
    required double ten,
    required double eleven,
    required double twelve,
  }) = _SpiritMeters;
  factory SpiritMeters.fromJson(Map<String, dynamic> json) =>
      _$SpiritMetersFromJson(json);
  @override
  Map<String, dynamic> toJson() => {
        'nine': nine,
        'ten': ten,
        'eleven': eleven,
        'twelve': twelve,
      };
}
