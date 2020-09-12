import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:woocommerce_rest_api/src/models/woo_product.dart';

part 'woo_cart_list.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class WooCartItem {
  WooProduct product;
  int quantity;

  WooCartItem({
    @required this.product,
    @required this.quantity,
  })  : assert(product != null),
        assert(quantity != null),
        assert(quantity > 0);

  factory WooCartItem.fromJson(Map<String, dynamic> json) =>
      _$WooCartItemFromJson(json);

  Map<String, dynamic> toJson() => _$WooCartItemToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is WooCartItem && o.product == product && o.quantity == quantity;
  }

  @override
  int get hashCode => product.hashCode ^ quantity.hashCode;

  WooCartItem copyWith({
    WooProduct product,
    int quantity,
  }) {
    return WooCartItem(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
    );
  }
}
