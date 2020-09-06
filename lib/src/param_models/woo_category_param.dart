import 'package:json_annotation/json_annotation.dart';

import 'package:woocommerce_rest_api/src/param_models/woo_base_param.dart';

part 'woo_category_param.g.dart';

@JsonSerializable(includeIfNull: false)
class WooCategoryParam implements WooBaseParam<WooCategoryParamOrderBy> {
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
  WooCategoryParamOrderBy orderBy;
  @override
  int page;
  @JsonKey(name: 'per_page')
  @override
  int perPage;
  @override
  String search;
  @JsonKey(name: 'hide_empty')
  bool hideEmpty;
  int parent;
  int product;
  String slug;
  WooCategoryParam({
    this.after,
    this.before,
    this.context,
    this.exclude,
    this.include,
    this.offset,
    this.order,
    this.orderBy,
    this.page,
    this.perPage,
    this.search,
    this.hideEmpty,
    this.parent,
    this.product,
    this.slug,
  });

  factory WooCategoryParam.fromJson(Map<String, dynamic> json) =>
      _$WooCategoryParamFromJson(json);

  Map<String, dynamic> toJson() => _$WooCategoryParamToJson(this);
}

enum WooCategoryParamOrderBy {
  include,
  name,
  slug,
  term_group,
  description,
  count
}
