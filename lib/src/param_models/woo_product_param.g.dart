// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'woo_product_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooProductParam _$WooProductParamFromJson(Map<String, dynamic> json) {
  return WooProductParam(
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
    slug: json['slug'] as String,
    status:
        _$enumDecodeNullable(_$WooProductStockStatusEnumMap, json['status']),
    type: _$enumDecodeNullable(_$WooProductTypeEnumMap, json['type']),
    sku: json['sku'] as String,
    featured: json['featured'] as bool,
    category: json['category'] as String,
    tag: json['tag'] as String,
    shippingClass: json['shipping_class'] as String,
    attribute: json['attribute'] as String,
    attribute_term: json['attribute_term'] as String,
    taxClass: json['tax_class'] as String,
    onSale: json['on_sale'] as bool,
    minPrice: json['min_price'] as String,
    maxPrice: json['max_price'] as String,
    stockStatus: _$enumDecodeNullable(
        _$WooProductStockStatusEnumMap, json['stock_status']),
    orderBy:
        _$enumDecodeNullable(_$WooProductParamOrderByEnumMap, json['order_by']),
  );
}

Map<String, dynamic> _$WooProductParamToJson(WooProductParam instance) {
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
  writeNotNull('order_by', _$WooProductParamOrderByEnumMap[instance.orderBy]);
  writeNotNull('page', instance.page);
  writeNotNull('per_page', instance.perPage);
  writeNotNull('search', instance.search);
  writeNotNull('parent', instance.parent);
  writeNotNull('parent_exclude', instance.parentExclude);
  writeNotNull('slug', instance.slug);
  writeNotNull('status', _$WooProductStockStatusEnumMap[instance.status]);
  writeNotNull('type', _$WooProductTypeEnumMap[instance.type]);
  writeNotNull('sku', instance.sku);
  writeNotNull('featured', instance.featured);
  writeNotNull('category', instance.category);
  writeNotNull('tag', instance.tag);
  writeNotNull('shipping_class', instance.shippingClass);
  writeNotNull('attribute', instance.attribute);
  writeNotNull('attribute_term', instance.attribute_term);
  writeNotNull('tax_class', instance.taxClass);
  writeNotNull('on_sale', instance.onSale);
  writeNotNull('min_price', instance.minPrice);
  writeNotNull('max_price', instance.maxPrice);
  writeNotNull(
      'stock_status', _$WooProductStockStatusEnumMap[instance.stockStatus]);
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

const _$WooProductStockStatusEnumMap = {
  WooProductStockStatus.instock: 'instock',
  WooProductStockStatus.outofstock: 'outofstock',
  WooProductStockStatus.onbackorder: 'onbackorder',
};

const _$WooProductTypeEnumMap = {
  WooProductType.simple: 'simple',
  WooProductType.grouped: 'grouped',
  WooProductType.external: 'external',
  WooProductType.variable: 'variable',
};

const _$WooProductParamOrderByEnumMap = {
  WooProductParamOrderBy.date: 'date',
  WooProductParamOrderBy.id: 'id',
  WooProductParamOrderBy.include: 'include',
  WooProductParamOrderBy.title: 'title',
  WooProductParamOrderBy.slug: 'slug',
};
