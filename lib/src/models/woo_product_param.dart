import 'package:json_annotation/json_annotation.dart';

import 'package:woocommerce_rest_api/src/models/woo_product.dart';

part 'woo_product_param.g.dart';

@JsonSerializable(includeIfNull: false)
class WooProductParam {
  String context;
  int page;
  @JsonKey(name: 'per_page')
  int perPage;
  String search;
  String after;
  String before;
  List<int> exclude;
  List<int> include;
  int offset;
  WooParamOrder order;
  @JsonKey(name: 'orderby')
  WooProductParamOrderBy orderBy;
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
  WooProductParam({
    this.context,
    this.page,
    this.perPage,
    this.search,
    this.after,
    this.before,
    this.exclude,
    this.include,
    this.offset,
    this.order,
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
    this.onSale,
    this.minPrice,
    this.maxPrice,
    this.stockStatus,
  });

  factory WooProductParam.fromJson(Map<String, dynamic> json) =>
      _$WooProductParamFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductParamToJson(this);
}

enum WooParamOrder { asc, desc }
enum WooProductParamOrderBy { date, id, include, title, slug }
