import 'package:json_annotation/json_annotation.dart';

part 'ti_wishlist_product.g.dart';

@JsonSerializable(includeIfNull: false)
class TIWishListProduct {
  @JsonKey(name: 'item_id')
  int itemId;
  @JsonKey(name: 'product_id')
  int productId;
  @JsonKey(name: 'variation_id')
  int variationId;
  int quantity;
  List<Map<String, dynamic>> meta;
  @JsonKey(name: 'date_added')
  DateTime dateAdded;
  String price;
  @JsonKey(name: 'in_stock')
  bool inStock;
  TIWishListProduct({
    this.itemId,
    this.productId,
    this.variationId,
    this.quantity,
    this.meta,
    this.dateAdded,
    this.price,
    this.inStock,
  });

  factory TIWishListProduct.fromJson(Map<String, dynamic> json) =>
      _$TIWishListProductFromJson(json);

  Map<String, dynamic> toJson() => _$TIWishListProductToJson(this);

  TIWishListProduct copyWith({
    int itemId,
    int productId,
    int variationId,
    int quantity,
    List<Map<String, dynamic>> meta,
    DateTime dateAdded,
    String price,
    bool inStock,
  }) {
    return TIWishListProduct(
      itemId: itemId ?? this.itemId,
      productId: productId ?? this.productId,
      variationId: variationId ?? this.variationId,
      quantity: quantity ?? this.quantity,
      meta: meta ?? this.meta,
      dateAdded: dateAdded ?? this.dateAdded,
      price: price ?? this.price,
      inStock: inStock ?? this.inStock,
    );
  }
}
