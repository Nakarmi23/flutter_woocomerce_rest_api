import 'package:json_annotation/json_annotation.dart';

import 'package:woocommerce_rest_api/src/param_models/woo_base_param.dart';

part 'woo_order_param.g.dart';

@JsonSerializable(includeIfNull: false)
class WooOrderParam implements WooBaseParam<WooOrderParamOrderBy> {
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
  WooOrderParamOrderBy orderBy;

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
  List<String> status;
  int customer;
  int product;
  int dp;
  WooOrderParam({
    this.after,
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
    this.status,
    this.customer,
    this.product,
    this.dp,
  });

  factory WooOrderParam.fromJson(Map<String, dynamic> json) =>
      _$WooOrderParamFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderParamToJson(this);
}

enum WooOrderParamOrderBy { date, id, include, title, slug }
