// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ti_wishlist_product_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TIWishlistProductParam _$TIWishlistProductParamFromJson(
    Map<String, dynamic> json) {
  return TIWishlistProductParam(
    count: json['count'] as int,
    offset: json['offset'] as int,
    order: json['order'] as String,
  );
}

Map<String, dynamic> _$TIWishlistProductParamToJson(
    TIWishlistProductParam instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('offset', instance.offset);
  writeNotNull('order', instance.order);
  return val;
}
