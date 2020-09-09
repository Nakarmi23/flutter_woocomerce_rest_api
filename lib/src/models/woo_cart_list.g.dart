// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'woo_cart_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooCartItem _$WooCartItemFromJson(Map<String, dynamic> json) {
  return WooCartItem(
    product: json['product'] == null
        ? null
        : WooProduct.fromJson(json['product'] as Map<String, dynamic>),
    quantity: json['quantity'] as int,
  );
}

Map<String, dynamic> _$WooCartItemToJson(WooCartItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product', instance.product);
  writeNotNull('quantity', instance.quantity);
  return val;
}
