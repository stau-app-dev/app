// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cafe_menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CafeMenuItem _$$_CafeMenuItemFromJson(Map<String, dynamic> json) =>
    _$_CafeMenuItem(
      name: json['name'] as String,
      pictureId: json['pictureId'] as String,
      pictureUrl: json['pictureUrl'] as String,
      price: (json['price'] as num).toDouble(),
      isTodaysSpecial: json['isTodaysSpecial'] as bool,
    );

Map<String, dynamic> _$$_CafeMenuItemToJson(_$_CafeMenuItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'pictureId': instance.pictureId,
      'pictureUrl': instance.pictureUrl,
      'price': instance.price,
      'isTodaysSpecial': instance.isTodaysSpecial,
    };
