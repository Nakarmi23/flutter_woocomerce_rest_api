// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'woo_review_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooReviewParam _$WooReviewParamFromJson(Map<String, dynamic> json) {
  return WooReviewParam(
    after: json['after'] as String,
    before: json['before'] as String,
    context: json['context'] as String,
    exclude: (json['exclude'] as List)?.map((e) => e as int)?.toList(),
    include: (json['include'] as List)?.map((e) => e as int)?.toList(),
    offset: json['offset'] as int,
    order: _$enumDecodeNullable(_$WooParamOrderEnumMap, json['order']),
    page: json['page'] as int,
    perPage: json['per_page'] as int,
    search: json['search'] as String,
    reviewer: (json['reviewer'] as List)?.map((e) => e as int)?.toList(),
    reviewerExclude:
        (json['reviewer_exclude'] as List)?.map((e) => e as int)?.toList(),
    reviewerEmail:
        (json['reviewer_email'] as List)?.map((e) => e as int)?.toList(),
    product: json['product'] as int,
    orderBy:
        _$enumDecodeNullable(_$WooReviewParamOrderByEnumMap, json['order_by']),
    status: _$enumDecodeNullable(_$WooReviewParamStatusEnumMap, json['status']),
  );
}

Map<String, dynamic> _$WooReviewParamToJson(WooReviewParam instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('after', instance.after);
  writeNotNull('before', instance.before);
  writeNotNull('context', instance.context);
  writeNotNull('exclude', instance.exclude);
  writeNotNull('include', instance.include);
  writeNotNull('offset', instance.offset);
  writeNotNull('order', _$WooParamOrderEnumMap[instance.order]);
  writeNotNull('order_by', _$WooReviewParamOrderByEnumMap[instance.orderBy]);
  writeNotNull('page', instance.page);
  writeNotNull('per_page', instance.perPage);
  writeNotNull('search', instance.search);
  writeNotNull('reviewer', instance.reviewer);
  writeNotNull('reviewer_exclude', instance.reviewerExclude);
  writeNotNull('reviewer_email', instance.reviewerEmail);
  writeNotNull('status', _$WooReviewParamStatusEnumMap[instance.status]);
  writeNotNull('product', instance.product);
  return val;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$WooParamOrderEnumMap = {
  WooParamOrder.asc: 'asc',
  WooParamOrder.desc: 'desc',
};

const _$WooReviewParamOrderByEnumMap = {
  WooReviewParamOrderBy.date: 'date',
  WooReviewParamOrderBy.date_gmt: 'date_gmt',
  WooReviewParamOrderBy.id: 'id',
  WooReviewParamOrderBy.slug: 'slug',
  WooReviewParamOrderBy.include: 'include',
  WooReviewParamOrderBy.product: 'product',
};

const _$WooReviewParamStatusEnumMap = {
  WooReviewParamStatus.all: 'all',
  WooReviewParamStatus.hold: 'hold',
  WooReviewParamStatus.approved: 'approved',
  WooReviewParamStatus.spam: 'spam',
  WooReviewParamStatus.trash: 'trash',
};
