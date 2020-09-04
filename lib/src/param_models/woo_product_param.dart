import 'package:json_annotation/json_annotation.dart';

import 'package:woocommerce_rest_api/src/models/woo_product.dart';
import 'package:woocommerce_rest_api/src/param_models/woo_base_param.dart';

part 'woo_product_param.g.dart';

@JsonSerializable(includeIfNull: false)
class WooProductParam implements WooBaseParam {
  @override
  String after;
  @override
  String before;
  @override
  String context;
  @override
  List<int> exclude;
  @override
  List<int> include;
  @override
  int offset;
  @override
  WooParamOrder order;
  @JsonKey(name: 'order_by')
  @override
  WooProductParamOrderBy orderBy;
  @override
  int page;
  @JsonKey(name: 'per_page')
  @override
  int perPage;
  @override
  String search;
  List<int> parent;
  @JsonKey(name: 'parent_exclude')
  List<int> parentExclude;
  String slug;
  WooProductStockStatus status;
  WooProductType type;
  String sku;
  bool featured;
  String category;
  String tag;
  @JsonKey(name: 'shipping_class')
  String shippingClass;
  String attribute;
  String attribute_term;
  @JsonKey(name: 'tax_class')
  String taxClass;
  @JsonKey(name: 'on_sale')
  bool onSale;
  @JsonKey(name: 'min_price')
  String minPrice;
  @JsonKey(name: 'max_price')
  String maxPrice;
  @JsonKey(name: 'stock_status')
  WooProductStockStatus stockStatus;
  WooProductParam(
      {this.after,
      this.before,
      this.context,
      this.exclude,
      this.include,
      this.offset,
      this.order,
      this.page,
      this.perPage,
      this.search,
      this.parent,
      this.parentExclude,
      this.slug,
      this.status,
      this.type,
      this.sku,
      this.featured,
      this.category,
      this.tag,
      this.shippingClass,
      this.attribute,
      this.attribute_term,
      this.taxClass,
      this.onSale,
      this.minPrice,
      this.maxPrice,
      this.stockStatus,
      this.orderBy});

  factory WooProductParam.fromJson(Map<String, dynamic> json) =>
      _$WooProductParamFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductParamToJson(this);
}
