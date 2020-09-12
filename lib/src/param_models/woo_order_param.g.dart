// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'woo_order_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooOrderParam _$WooOrderParamFromJson(Map<String, dynamic> json) {
  return WooOrderParam(
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
    parent: (json['parent'] as List)?.map((e) => e as int)?.toList(),
    parentExclude:
        (json['parent_exclude'] as List)?.map((e) => e as int)?.toList(),
    status: (json['status'] as List)?.map((e) => e as String)?.toList(),
    customer: json['customer'] as int,
    product: json['product'] as int,
    dp: json['dp'] as int,
  )..orderBy =
      _$enumDecodeNullable(_$WooOrderParamOrderByEnumMap, json['order_by']);
}

Map<String, dynamic> _$WooOrderParamToJson(WooOrderParam instance) {
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
  writeNotNull('order_by', _$WooOrderParamOrderByEnumMap[instance.orderBy]);
  writeNotNull('page', instance.page);
  writeNotNull('per_page', instance.perPage);
  writeNotNull('search', instance.search);
  writeNotNull('parent', instance.parent);
  writeNotNull('parent_exclude', instance.parentExclude);
  writeNotNull('status', instance.status);
  writeNotNull('customer', instance.customer);
  writeNotNull('product', instance.product);
  writeNotNull('dp', instance.dp);
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

const _$WooOrderParamOrderByEnumMap = {
  WooOrderParamOrderBy.date: 'date',
  WooOrderParamOrderBy.id: 'id',
  WooOrderParamOrderBy.include: 'include',
  WooOrderParamOrderBy.title: 'title',
  WooOrderParamOrderBy.slug: 'slug',
};
