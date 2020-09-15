// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ti_wishlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TIWishList _$TIWishListFromJson(Map<String, dynamic> json) {
  return TIWishList(
    id: json['id'] as int,
    userId: json['user_id'] as int,
    dateAdded: json['date_added'] == null
        ? null
        : DateTime.parse(json['date_added'] as String),
    title: json['title'] as String,
    shareKey: json['share_key'] as String,
    status: _$enumDecodeNullable(_$TIWishListStatusEnumMap, json['status']),
  );
}

Map<String, dynamic> _$TIWishListToJson(TIWishList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user_id', instance.userId);
  writeNotNull('date_added', instance.dateAdded?.toIso8601String());
  writeNotNull('title', instance.title);
  writeNotNull('share_key', instance.shareKey);
  writeNotNull('status', _$TIWishListStatusEnumMap[instance.status]);
  return val;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$TIWishListStatusEnumMap = {
  TIWishListStatus.public: 'public',
  TIWishListStatus.share: 'share',
  TIWishListStatus.private: 'private',
};
