// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ti_wishlist_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TIWishListProduct _$TIWishListProductFromJson(Map<String, dynamic> json) {
  return TIWishListProduct(
    itemId: json['item_id'] as int,
    productId: json['product_id'] as int,
    variationId: json['variation_id'] as int,
    quantity: json['quantity'] as int,
    meta:
        (json['meta'] as List)?.map((e) => e as Map<String, dynamic>)?.toList(),
    dateAdded: json['date_added'] == null
        ? null
        : DateTime.parse(json['date_added'] as String),
    price: json['price'] as String,
    inStock: json['in_stock'] as bool,
  );
}

Map<String, dynamic> _$TIWishListProductToJson(TIWishListProduct instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item_id', instance.itemId);
  writeNotNull('product_id', instance.productId);
  writeNotNull('variation_id', instance.variationId);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('meta', instance.meta);
  writeNotNull('date_added', instance.dateAdded?.toIso8601String());
  writeNotNull('price', instance.price);
  writeNotNull('in_stock', instance.inStock);
  return val;
}
