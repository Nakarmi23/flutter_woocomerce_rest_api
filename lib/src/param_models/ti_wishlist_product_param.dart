import 'package:json_annotation/json_annotation.dart';

part 'ti_wishlist_product_param.g.dart';

@JsonSerializable(includeIfNull: false)
class TIWishlistProductParam {
  int count;
  int offset;
  String order;
  TIWishlistProductParam({
    this.count,
    this.offset,
    this.order,
  });
  factory TIWishlistProductParam.fromJson(Map<String, dynamic> json) =>
      _$TIWishlistProductParamFromJson(json);

  Map<String, dynamic> toJson() => _$TIWishlistProductParamToJson(this);

  TIWishlistProductParam copyWith({
    int count,
    int offset,
    String order,
  }) {
    return TIWishlistProductParam(
      count: count ?? this.count,
      offset: offset ?? this.offset,
      order: order ?? this.order,
    );
  }
}
