// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'woo_customer_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooCustomerParam _$WooCustomerParamFromJson(Map<String, dynamic> json) {
  return WooCustomerParam(
    after: json['after'] as String,
    before: json['before'] as String,
    context: json['context'] as String,
    exclude: (json['exclude'] as List)?.map((e) => e as int)?.toList(),
    include: (json['include'] as List)?.map((e) => e as int)?.toList(),
    offset: json['offset'] as int,
    order: _$enumDecodeNullable(_$WooParamOrderEnumMap, json['order']),
    orderBy: json['order_by'],
    page: json['page'] as int,
    perPage: json['per_page'] as int,
    search: json['search'] as String,
    email: json['email'] as String,
    role: json['role'] as String,
  );
}

Map<String, dynamic> _$WooCustomerParamToJson(WooCustomerParam instance) {
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
  writeNotNull('order_by', instance.orderBy);
  writeNotNull('page', instance.page);
  writeNotNull('per_page', instance.perPage);
  writeNotNull('search', instance.search);
  writeNotNull('email', instance.email);
  writeNotNull('role', instance.role);
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
