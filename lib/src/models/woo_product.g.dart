// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'woo_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooProduct _$WooProductFromJson(Map<String, dynamic> json) {
  return WooProduct(
    id: json['id'] as int,
    name: json['name'] as String,
    slug: json['slug'] as String,
    permalink: json['permalink'] as String,
    dateCreated: json['date_created'] == null
        ? null
        : DateTime.parse(json['date_created'] as String),
    dateCreatedGMT: json['date_created_gmt'] == null
        ? null
        : DateTime.parse(json['date_created_gmt'] as String),
    dateModified: json['date_modified'] == null
        ? null
        : DateTime.parse(json['date_modified'] as String),
    dateModifiedGMT: json['date_modified_gmt'] == null
        ? null
        : DateTime.parse(json['date_modified_gmt'] as String),
    featured: json['featured'] as bool,
    description: json['description'] as String,
    shortDescription: json['short_description'] as String,
    sku: json['sku'] as String,
    price: json['price'] as String,
    regularPrice: json['regular_price'] as String,
    salePrice: json['sale_price'] as String,
    dateOnSaleFrom: json['date_on_sale_from'] == null
        ? null
        : DateTime.parse(json['date_on_sale_from'] as String),
    dateOnSaleFromGMT: json['date_on_sale_from_gmt'] == null
        ? null
        : DateTime.parse(json['date_on_sale_from_gmt'] as String),
    dateOnSaleTo: json['date_on_sale_to'] == null
        ? null
        : DateTime.parse(json['date_on_sale_to'] as String),
    dateOnSaleToGMT: json['date_on_sale_to_gmt'] == null
        ? null
        : DateTime.parse(json['date_on_sale_to_gmt'] as String),
    priceHtml: json['price_html'] as String,
    onSale: json['on_sale'] as bool,
    purchasable: json['purchasable'] as bool,
    totalSales: json['total_sales'] as int,
    virtual: json['virtual'] as bool,
    downloadable: json['downloadable'] as bool,
    downloads: (json['downloads'] as List)
        ?.map((e) => e == null
            ? null
            : WooProductDownload.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    downloadLimit: json['download_limit'] as int,
    downloadExpiry: json['download_expiry'] as int,
    externalURL: json['external_url'] as String,
    buttonText: json['button_text'] as String,
    taxClass: json['tax_class'] as String,
    manageStock: json['manage_stock'] as bool,
    stockQuantity: json['stock_quantity'] as int,
    stockStatus: _$enumDecodeNullable(
        _$WooProductStockStatusEnumMap, json['stock_status']),
    backOrders: json['backorders'] as String,
    backOrdersAllowed: json['backorders_allowed'] as bool,
    backOrdered: json['backordered'] as bool,
    soldIndividually: json['sold_individually'] as bool,
    weight: json['weight'] as String,
    shippingRequired: json['shipping_required'] as bool,
    shippingTaxable: json['shipping_taxable'] as bool,
    shippingClass: json['shipping_class'] as String,
    shippingClassId: json['shipping_class_id'] as int,
    reviewsAllowed: json['reviews_allowed'] as bool,
    averageRating: json['average_rating'] as String,
    ratingCount: json['rating_count'] as int,
    relatedIds: (json['related_ids'] as List)?.map((e) => e as int)?.toList(),
    upSellIds: (json['upsell_ids'] as List)?.map((e) => e as int)?.toList(),
    crossSellIds:
        (json['cross_sell_ids'] as List)?.map((e) => e as int)?.toList(),
    parentId: json['parent_id'] as int,
    purchaseNote: json['purchase_note'] as String,
    categories: (json['categories'] as List)
        ?.map((e) => e == null
            ? null
            : WooProductCategory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tags: (json['tags'] as List)
        ?.map((e) => e == null
            ? null
            : WooProductTag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    images: (json['images'] as List)
        ?.map((e) => e == null
            ? null
            : WooProductImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attributes: (json['attributes'] as List)
        ?.map((e) => e == null
            ? null
            : WooProductAttribute.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    defaultAttributes: (json['default_attributes'] as List)
        ?.map((e) => e == null
            ? null
            : WooProductDefaultAttribute.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    variations: (json['variations'] as List)?.map((e) => e as int)?.toList(),
    menuOrder: json['menu_order'] as int,
    metaData: (json['meta_data'] as List)
        ?.map((e) => e == null
            ? null
            : WooProductMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..type = _$enumDecodeNullable(_$WooProductTypeEnumMap, json['type'])
    ..status =
        _$enumDecodeNullable(_$WooProductStatusTypeEnumMap, json['status'])
    ..catalogVisibility = _$enumDecodeNullable(
        _$WooProductCatalogVisibilityEnumMap, json['catalog_visibility'])
    ..taxStatus =
        _$enumDecodeNullable(_$WooProductTaxStatusEnumMap, json['tax_status'])
    ..dimensions = json['dimensions'] == null
        ? null
        : WooProductDimensions.fromJson(
            json['dimensions'] as Map<String, dynamic>);
}

Map<String, dynamic> _$WooProductToJson(WooProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'permalink': instance.permalink,
      'date_created': instance.dateCreated?.toIso8601String(),
      'date_created_gmt': instance.dateCreatedGMT?.toIso8601String(),
      'date_modified': instance.dateModified?.toIso8601String(),
      'date_modified_gmt': instance.dateModifiedGMT?.toIso8601String(),
      'type': _$WooProductTypeEnumMap[instance.type],
      'status': _$WooProductStatusTypeEnumMap[instance.status],
      'featured': instance.featured,
      'catalog_visibility':
          _$WooProductCatalogVisibilityEnumMap[instance.catalogVisibility],
      'description': instance.description,
      'short_description': instance.shortDescription,
      'sku': instance.sku,
      'price': instance.price,
      'regular_price': instance.regularPrice,
      'sale_price': instance.salePrice,
      'date_on_sale_from': instance.dateOnSaleFrom?.toIso8601String(),
      'date_on_sale_from_gmt': instance.dateOnSaleFromGMT?.toIso8601String(),
      'date_on_sale_to': instance.dateOnSaleTo?.toIso8601String(),
      'date_on_sale_to_gmt': instance.dateOnSaleToGMT?.toIso8601String(),
      'price_html': instance.priceHtml,
      'on_sale': instance.onSale,
      'purchasable': instance.purchasable,
      'total_sales': instance.totalSales,
      'virtual': instance.virtual,
      'downloadable': instance.downloadable,
      'downloads': instance.downloads,
      'download_limit': instance.downloadLimit,
      'download_expiry': instance.downloadExpiry,
      'external_url': instance.externalURL,
      'button_text': instance.buttonText,
      'tax_status': _$WooProductTaxStatusEnumMap[instance.taxStatus],
      'tax_class': instance.taxClass,
      'manage_stock': instance.manageStock,
      'stock_quantity': instance.stockQuantity,
      'stock_status': _$WooProductStockStatusEnumMap[instance.stockStatus],
      'backorders': instance.backOrders,
      'backorders_allowed': instance.backOrdersAllowed,
      'backordered': instance.backOrdered,
      'sold_individually': instance.soldIndividually,
      'weight': instance.weight,
      'dimensions': instance.dimensions,
      'shipping_required': instance.shippingRequired,
      'shipping_taxable': instance.shippingTaxable,
      'shipping_class': instance.shippingClass,
      'shipping_class_id': instance.shippingClassId,
      'reviews_allowed': instance.reviewsAllowed,
      'average_rating': instance.averageRating,
      'rating_count': instance.ratingCount,
      'related_ids': instance.relatedIds,
      'upsell_ids': instance.upSellIds,
      'cross_sell_ids': instance.crossSellIds,
      'parent_id': instance.parentId,
      'purchase_note': instance.purchaseNote,
      'categories': instance.categories,
      'tags': instance.tags,
      'images': instance.images,
      'attributes': instance.attributes,
      'default_attributes': instance.defaultAttributes,
      'variations': instance.variations,
      'menu_order': instance.menuOrder,
      'meta_data': instance.metaData,
    };

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

const _$WooProductStatusTypeEnumMap = {
  WooProductStatusType.draft: 'draft',
  WooProductStatusType.pending: 'pending',
  WooProductStatusType.private: 'private',
  WooProductStatusType.publish: 'publish',
};

const _$WooProductCatalogVisibilityEnumMap = {
  WooProductCatalogVisibility.visible: 'visible',
  WooProductCatalogVisibility.catalog: 'catalog',
  WooProductCatalogVisibility.search: 'search',
  WooProductCatalogVisibility.hidden: 'hidden',
};

const _$WooProductTaxStatusEnumMap = {
  WooProductTaxStatus.taxable: 'taxable',
  WooProductTaxStatus.shipping: 'shipping',
};

WooProductDownload _$WooProductDownloadFromJson(Map<String, dynamic> json) {
  return WooProductDownload(
    id: json['id'] as String,
    name: json['name'] as String,
    file: json['file'] as String,
  );
}

Map<String, dynamic> _$WooProductDownloadToJson(WooProductDownload instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'file': instance.file,
    };

WooProductDimensions _$WooProductDimensionsFromJson(Map<String, dynamic> json) {
  return WooProductDimensions(
    length: json['length'] as String,
    width: json['width'] as String,
    height: json['height'] as String,
  );
}

Map<String, dynamic> _$WooProductDimensionsToJson(
        WooProductDimensions instance) =>
    <String, dynamic>{
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
    };

WooProductCategory _$WooProductCategoryFromJson(Map<String, dynamic> json) {
  return WooProductCategory(
    id: json['id'] as int,
    name: json['name'] as String,
    slug: json['slug'] as String,
  );
}

Map<String, dynamic> _$WooProductCategoryToJson(WooProductCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

WooProductTag _$WooProductTagFromJson(Map<String, dynamic> json) {
  return WooProductTag(
    id: json['id'] as int,
    name: json['name'] as String,
    slug: json['slug'] as String,
  );
}

Map<String, dynamic> _$WooProductTagToJson(WooProductTag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

WooProductImage _$WooProductImageFromJson(Map<String, dynamic> json) {
  return WooProductImage(
    id: json['id'] as int,
    dateCreated: json['date_created'] == null
        ? null
        : DateTime.parse(json['date_created'] as String),
    dateCreatedGMT: json['date_created_gmt'] == null
        ? null
        : DateTime.parse(json['date_created_gmt'] as String),
    dateModified: json['date_modified'] == null
        ? null
        : DateTime.parse(json['date_modified'] as String),
    dateModifiedGMT: json['date_modified_gmt'] == null
        ? null
        : DateTime.parse(json['date_modified_gmt'] as String),
    name: json['name'] as String,
    src: json['src'] as String,
    alt: json['alt'] as String,
  );
}

Map<String, dynamic> _$WooProductImageToJson(WooProductImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_created': instance.dateCreated?.toIso8601String(),
      'date_created_gmt': instance.dateCreatedGMT?.toIso8601String(),
      'date_modified': instance.dateModified?.toIso8601String(),
      'date_modified_gmt': instance.dateModifiedGMT?.toIso8601String(),
      'src': instance.src,
      'name': instance.name,
      'alt': instance.alt,
    };

WooProductAttribute _$WooProductAttributeFromJson(Map<String, dynamic> json) {
  return WooProductAttribute(
    id: json['id'] as int,
    name: json['name'] as String,
    position: json['position'] as String,
    visible: json['visible'] as String,
    variation: json['variation'] as String,
    options: json['options'] as String,
  );
}

Map<String, dynamic> _$WooProductAttributeToJson(
        WooProductAttribute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'position': instance.position,
      'visible': instance.visible,
      'variation': instance.variation,
      'options': instance.options,
    };

WooProductDefaultAttribute _$WooProductDefaultAttributeFromJson(
    Map<String, dynamic> json) {
  return WooProductDefaultAttribute(
    id: json['id'] as int,
    name: json['name'] as String,
    options: json['options'] as String,
  );
}

Map<String, dynamic> _$WooProductDefaultAttributeToJson(
        WooProductDefaultAttribute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'options': instance.options,
    };

WooProductMetaData _$WooProductMetaDataFromJson(Map<String, dynamic> json) {
  return WooProductMetaData(
    id: json['id'] as int,
    key: json['key'] as String,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$WooProductMetaDataToJson(WooProductMetaData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };
