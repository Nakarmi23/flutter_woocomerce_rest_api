import 'package:json_annotation/json_annotation.dart';

import 'package:woocommerce_rest_api/src/param_models/woo_base_param.dart';

part 'woo_review_param.g.dart';

@JsonSerializable(includeIfNull: false)
class WooReviewParam implements WooBaseParam<WooReviewParamOrderBy> {
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
  WooReviewParamOrderBy orderBy;
  @override
  int page;
  @JsonKey(name: 'per_page')
  @override
  int perPage;
  @override
  String search;
  List<int> reviewer;
  @JsonKey(name: 'reviewer_exclude')
  List<int> reviewerExclude;
  @JsonKey(name: 'reviewer_email')
  List<int> reviewerEmail;
  WooReviewParamStatus status;
  List<int> product;
  WooReviewParam({
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
    this.reviewer,
    this.reviewerExclude,
    this.reviewerEmail,
    this.product,
    this.orderBy,
    this.status,
  });

  factory WooReviewParam.fromJson(Map<String, dynamic> json) =>
      _$WooReviewParamFromJson(json);

  Map<String, dynamic> toJson() => _$WooReviewParamToJson(this);
}

enum WooReviewParamOrderBy { date, date_gmt, id, slug, include, product }
enum WooReviewParamStatus { all, hold, approved, spam, trash }
