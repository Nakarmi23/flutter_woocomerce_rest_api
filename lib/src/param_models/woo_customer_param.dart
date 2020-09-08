import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:woocommerce_rest_api/src/param_models/woo_base_param.dart';

part 'woo_customer_param.g.dart';

@JsonSerializable(includeIfNull: false)
class WooCustomerParam implements WooBaseParam {
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
  var orderBy;

  @override
  int page;

  @JsonKey(name: 'per_page')
  @override
  int perPage;

  @override
  String search;

  String email;

  String role;
  WooCustomerParam({
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
    this.email,
    this.role,
  });

  factory WooCustomerParam.fromJson(Map<String, dynamic> json) =>
      _$WooCustomerParamFromJson(json);

  Map<String, dynamic> toJson() => _$WooCustomerParamToJson(this);

  WooCustomerParam copyWith({
    String after,
    String before,
    String context,
    List<int> exclude,
    List<int> include,
    int offset,
    WooParamOrder order,
    var orderBy,
    int page,
    int perPage,
    String search,
    String email,
    String role,
  }) {
    return WooCustomerParam(
      after: after ?? this.after,
      before: before ?? this.before,
      context: context ?? this.context,
      exclude: exclude ?? this.exclude,
      include: include ?? this.include,
      offset: offset ?? this.offset,
      order: order ?? this.order,
      orderBy: orderBy ?? this.orderBy,
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      search: search ?? this.search,
      email: email ?? this.email,
      role: role ?? this.role,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is WooCustomerParam &&
        o.after == after &&
        o.before == before &&
        o.context == context &&
        listEquals(o.exclude, exclude) &&
        listEquals(o.include, include) &&
        o.offset == offset &&
        o.order == order &&
        o.orderBy == orderBy &&
        o.page == page &&
        o.perPage == perPage &&
        o.search == search &&
        o.email == email &&
        o.role == role;
  }

  @override
  int get hashCode {
    return after.hashCode ^
        before.hashCode ^
        context.hashCode ^
        exclude.hashCode ^
        include.hashCode ^
        offset.hashCode ^
        order.hashCode ^
        orderBy.hashCode ^
        page.hashCode ^
        perPage.hashCode ^
        search.hashCode ^
        email.hashCode ^
        role.hashCode;
  }
}
