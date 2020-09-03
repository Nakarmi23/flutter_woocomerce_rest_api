import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'woo_product.g.dart';

@JsonSerializable()
class WooProduct {
  int id;
  String name;
  String slug;
  String permalink;
  @JsonKey(name: 'date_created')
  DateTime dateCreated;
  @JsonKey(name: 'date_created_gmt')
  DateTime dateCreatedGMT;
  @JsonKey(name: 'date_modified')
  DateTime dateModified;
  @JsonKey(name: 'date_modified_gmt')
  DateTime dateModifiedGMT;
  WooProductTye type;
  WooProductStatusType status;
  bool featured;
  @JsonKey(name: 'catalog_visibility')
  WooProductCatalogVisibility catalogVisibility;
  String description;
  @JsonKey(name: 'short_description')
  String shortDescription;
  String sku;
  String price;
  @JsonKey(name: 'regular_price')
  String regularPrice;
  @JsonKey(name: 'sale_price')
  String salePrice;
  @JsonKey(name: 'date_on_sale_from')
  DateTime dateOnSaleFrom;
  @JsonKey(name: 'date_on_sale_from_gmt')
  DateTime dateOnSaleFromGMT;
  @JsonKey(name: 'date_on_sale_to')
  DateTime dateOnSaleTo;
  @JsonKey(name: 'date_on_sale_to_gmt')
  DateTime dateOnSaleToGMT;
  @JsonKey(name: 'price_html')
  String priceHtml;
  @JsonKey(name: 'on_sale')
  bool onSale;
  bool purchasable;
  @JsonKey(name: 'total_sales')
  int totalSales;
  bool virtual;
  bool downloadable;
  List<WooProductDownload> downloads;
  @JsonKey(name: 'download_limit')
  int downloadLimit;
  @JsonKey(name: 'download_expiry')
  int downloadExpiry;
  @JsonKey(name: 'external_url')
  String externalURL;
  @JsonKey(name: 'button_text')
  String buttonText;
  @JsonKey(name: 'tax_status')
  WooProductTaxStatus taxStatus;
  @JsonKey(name: 'tax_class')
  String taxClass;
  @JsonKey(name: 'manage_stock')
  bool manageStock;
  @JsonKey(name: 'stock_quantity')
  int stockQuantity;
  @JsonKey(name: 'stock_status')
  WooProductStockStatus stockStatus;
  @JsonKey(name: 'backorders')
  String backOrders;
  @JsonKey(name: 'backorders_allowed')
  bool backOrdersAllowed;
  @JsonKey(name: 'backordered')
  bool backOrdered;
  @JsonKey(name: 'sold_individually')
  bool soldIndividually;
  String weight;
  WooProductDimensions dimensions;
  @JsonKey(name: 'shipping_required')
  bool shippingRequired;
  @JsonKey(name: 'shipping_taxable')
  bool shippingTaxable;
  @JsonKey(name: 'shipping_class')
  String shippingClass;
  @JsonKey(name: 'shipping_class_id')
  int shippingClassId;
  @JsonKey(name: 'reviews_allowed')
  bool reviewsAllowed;
  @JsonKey(name: 'average_rating')
  String averageRating;
  @JsonKey(name: 'rating_count')
  int ratingCount;
  @JsonKey(name: 'related_ids')
  List<int> relatedIds;
  @JsonKey(name: 'upsell_ids')
  List<int> upSellIds;
  @JsonKey(name: 'cross_sell_ids')
  List<int> crossSellIds;
  @JsonKey(name: 'parent_id')
  int parentId;
  @JsonKey(name: 'purchase_note')
  String purchaseNote;
  List<WooProductCategory> categories;
  List<WooProductTag> tags;
  List<WooProductImage> images;
  List<WooProductAttribute> attributes;
  @JsonKey(name: 'default_attributes')
  List<WooProductDefaultAttribute> defaultAttributes;
  List<int> variations;
  @JsonKey(name: 'menu_order')
  int menuOrder;
  @JsonKey(name: 'meta_data')
  List<WooProductMetaData> metaData;
  WooProduct({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGMT,
    this.dateModified,
    this.dateModifiedGMT,
    this.featured,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGMT,
    this.dateOnSaleTo,
    this.dateOnSaleToGMT,
    this.priceHtml,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalURL,
    this.buttonText,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.stockStatus,
    this.backOrders,
    this.backOrdersAllowed,
    this.backOrdered,
    this.soldIndividually,
    this.weight,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.relatedIds,
    this.upSellIds,
    this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.attributes,
    this.defaultAttributes,
    this.variations,
    this.menuOrder,
    this.metaData,
  });

  factory WooProduct.fromJson(Map<String, dynamic> json) =>
      _$WooProductFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductToJson(this);

  WooProduct copyWith({
    int id,
    String name,
    String slug,
    String permalink,
    DateTime dateCreated,
    DateTime dateCreatedGMT,
    DateTime dateModified,
    DateTime dateModifiedGMT,
    bool featured,
    String description,
    String shortDescription,
    String sku,
    String price,
    String regularPrice,
    String salePrice,
    DateTime dateOnSaleFrom,
    DateTime dateOnSaleFromGMT,
    DateTime dateOnSaleTo,
    DateTime dateOnSaleToGMT,
    String priceHtml,
    bool onSale,
    bool purchasable,
    int totalSales,
    bool virtual,
    bool downloadable,
    List<WooProductDownload> downloads,
    int downloadLimit,
    int downloadExpiry,
    String externalURL,
    String buttonText,
    String taxClass,
    bool manageStock,
    int stockQuantity,
    int stockStatus,
    String backOrders,
    bool backOrdersAllowed,
    bool backOrdered,
    bool soldIndividually,
    String weight,
    bool shippingRequired,
    bool shippingTaxable,
    String shippingClass,
    int shippingClassId,
    bool reviewsAllowed,
    String averageRating,
    int ratingCount,
    List<int> relatedIds,
    List<int> upSellIds,
    List<int> crossSellIds,
    int parentId,
    String purchaseNote,
    List<WooProductCategory> categories,
    List<WooProductTag> tags,
    List<WooProductImage> images,
    List<WooProductAttribute> attributes,
    List<WooProductDefaultAttribute> defaultAttributes,
    List<int> variations,
    int menuOrder,
    List<WooProductMetaData> metaData,
  }) {
    return WooProduct(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      permalink: permalink ?? this.permalink,
      dateCreated: dateCreated ?? this.dateCreated,
      dateCreatedGMT: dateCreatedGMT ?? this.dateCreatedGMT,
      dateModified: dateModified ?? this.dateModified,
      dateModifiedGMT: dateModifiedGMT ?? this.dateModifiedGMT,
      featured: featured ?? this.featured,
      description: description ?? this.description,
      shortDescription: shortDescription ?? this.shortDescription,
      sku: sku ?? this.sku,
      price: price ?? this.price,
      regularPrice: regularPrice ?? this.regularPrice,
      salePrice: salePrice ?? this.salePrice,
      dateOnSaleFrom: dateOnSaleFrom ?? this.dateOnSaleFrom,
      dateOnSaleFromGMT: dateOnSaleFromGMT ?? this.dateOnSaleFromGMT,
      dateOnSaleTo: dateOnSaleTo ?? this.dateOnSaleTo,
      dateOnSaleToGMT: dateOnSaleToGMT ?? this.dateOnSaleToGMT,
      priceHtml: priceHtml ?? this.priceHtml,
      onSale: onSale ?? this.onSale,
      purchasable: purchasable ?? this.purchasable,
      totalSales: totalSales ?? this.totalSales,
      virtual: virtual ?? this.virtual,
      downloadable: downloadable ?? this.downloadable,
      downloads: downloads ?? this.downloads,
      downloadLimit: downloadLimit ?? this.downloadLimit,
      downloadExpiry: downloadExpiry ?? this.downloadExpiry,
      externalURL: externalURL ?? this.externalURL,
      buttonText: buttonText ?? this.buttonText,
      taxClass: taxClass ?? this.taxClass,
      manageStock: manageStock ?? this.manageStock,
      stockQuantity: stockQuantity ?? this.stockQuantity,
      stockStatus: stockStatus ?? this.stockStatus,
      backOrders: backOrders ?? this.backOrders,
      backOrdersAllowed: backOrdersAllowed ?? this.backOrdersAllowed,
      backOrdered: backOrdered ?? this.backOrdered,
      soldIndividually: soldIndividually ?? this.soldIndividually,
      weight: weight ?? this.weight,
      shippingRequired: shippingRequired ?? this.shippingRequired,
      shippingTaxable: shippingTaxable ?? this.shippingTaxable,
      shippingClass: shippingClass ?? this.shippingClass,
      shippingClassId: shippingClassId ?? this.shippingClassId,
      reviewsAllowed: reviewsAllowed ?? this.reviewsAllowed,
      averageRating: averageRating ?? this.averageRating,
      ratingCount: ratingCount ?? this.ratingCount,
      relatedIds: relatedIds ?? this.relatedIds,
      upSellIds: upSellIds ?? this.upSellIds,
      crossSellIds: crossSellIds ?? this.crossSellIds,
      parentId: parentId ?? this.parentId,
      purchaseNote: purchaseNote ?? this.purchaseNote,
      categories: categories ?? this.categories,
      tags: tags ?? this.tags,
      images: images ?? this.images,
      attributes: attributes ?? this.attributes,
      defaultAttributes: defaultAttributes ?? this.defaultAttributes,
      variations: variations ?? this.variations,
      menuOrder: menuOrder ?? this.menuOrder,
      metaData: metaData ?? this.metaData,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is WooProduct &&
        o.id == id &&
        o.name == name &&
        o.slug == slug &&
        o.permalink == permalink &&
        o.dateCreated == dateCreated &&
        o.dateCreatedGMT == dateCreatedGMT &&
        o.dateModified == dateModified &&
        o.dateModifiedGMT == dateModifiedGMT &&
        o.featured == featured &&
        o.description == description &&
        o.shortDescription == shortDescription &&
        o.sku == sku &&
        o.price == price &&
        o.regularPrice == regularPrice &&
        o.salePrice == salePrice &&
        o.dateOnSaleFrom == dateOnSaleFrom &&
        o.dateOnSaleFromGMT == dateOnSaleFromGMT &&
        o.dateOnSaleTo == dateOnSaleTo &&
        o.dateOnSaleToGMT == dateOnSaleToGMT &&
        o.priceHtml == priceHtml &&
        o.onSale == onSale &&
        o.purchasable == purchasable &&
        o.totalSales == totalSales &&
        o.virtual == virtual &&
        o.downloadable == downloadable &&
        listEquals(o.downloads, downloads) &&
        o.downloadLimit == downloadLimit &&
        o.downloadExpiry == downloadExpiry &&
        o.externalURL == externalURL &&
        o.buttonText == buttonText &&
        o.taxClass == taxClass &&
        o.manageStock == manageStock &&
        o.stockQuantity == stockQuantity &&
        o.stockStatus == stockStatus &&
        o.backOrders == backOrders &&
        o.backOrdersAllowed == backOrdersAllowed &&
        o.backOrdered == backOrdered &&
        o.soldIndividually == soldIndividually &&
        o.weight == weight &&
        o.shippingRequired == shippingRequired &&
        o.shippingTaxable == shippingTaxable &&
        o.shippingClass == shippingClass &&
        o.shippingClassId == shippingClassId &&
        o.reviewsAllowed == reviewsAllowed &&
        o.averageRating == averageRating &&
        o.ratingCount == ratingCount &&
        listEquals(o.relatedIds, relatedIds) &&
        listEquals(o.upSellIds, upSellIds) &&
        listEquals(o.crossSellIds, crossSellIds) &&
        o.parentId == parentId &&
        o.purchaseNote == purchaseNote &&
        listEquals(o.categories, categories) &&
        listEquals(o.tags, tags) &&
        listEquals(o.images, images) &&
        listEquals(o.attributes, attributes) &&
        listEquals(o.defaultAttributes, defaultAttributes) &&
        listEquals(o.variations, variations) &&
        o.menuOrder == menuOrder &&
        listEquals(o.metaData, metaData);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        permalink.hashCode ^
        dateCreated.hashCode ^
        dateCreatedGMT.hashCode ^
        dateModified.hashCode ^
        dateModifiedGMT.hashCode ^
        featured.hashCode ^
        description.hashCode ^
        shortDescription.hashCode ^
        sku.hashCode ^
        price.hashCode ^
        regularPrice.hashCode ^
        salePrice.hashCode ^
        dateOnSaleFrom.hashCode ^
        dateOnSaleFromGMT.hashCode ^
        dateOnSaleTo.hashCode ^
        dateOnSaleToGMT.hashCode ^
        priceHtml.hashCode ^
        onSale.hashCode ^
        purchasable.hashCode ^
        totalSales.hashCode ^
        virtual.hashCode ^
        downloadable.hashCode ^
        downloads.hashCode ^
        downloadLimit.hashCode ^
        downloadExpiry.hashCode ^
        externalURL.hashCode ^
        buttonText.hashCode ^
        taxClass.hashCode ^
        manageStock.hashCode ^
        stockQuantity.hashCode ^
        stockStatus.hashCode ^
        backOrders.hashCode ^
        backOrdersAllowed.hashCode ^
        backOrdered.hashCode ^
        soldIndividually.hashCode ^
        weight.hashCode ^
        shippingRequired.hashCode ^
        shippingTaxable.hashCode ^
        shippingClass.hashCode ^
        shippingClassId.hashCode ^
        reviewsAllowed.hashCode ^
        averageRating.hashCode ^
        ratingCount.hashCode ^
        relatedIds.hashCode ^
        upSellIds.hashCode ^
        crossSellIds.hashCode ^
        parentId.hashCode ^
        purchaseNote.hashCode ^
        categories.hashCode ^
        tags.hashCode ^
        images.hashCode ^
        attributes.hashCode ^
        defaultAttributes.hashCode ^
        variations.hashCode ^
        menuOrder.hashCode ^
        metaData.hashCode;
  }
}

enum WooProductTye {
  simple,
  grouped,
  external,
  variable,
}

enum WooProductStatusType {
  draft,
  pending,
  private,
  publish,
}

enum WooProductStockStatus { instock, outofstock, onbackorder }

enum WooProductCatalogVisibility {
  visible,
  catalog,
  search,
  hidden,
}
enum WooProductTaxStatus {
  taxable,
  shipping,
}

@JsonSerializable()
class WooProductDownload {
  String id;
  String name;
  String file;
  WooProductDownload({this.id, this.name, this.file});

  factory WooProductDownload.fromJson(Map<String, dynamic> json) =>
      _$WooProductDownloadFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductDownloadToJson(this);
}

@JsonSerializable()
class WooProductDimensions {
  String length;
  String width;
  String height;
  WooProductDimensions({this.length, this.width, this.height});

  factory WooProductDimensions.fromJson(Map<String, dynamic> json) =>
      _$WooProductDimensionsFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductDimensionsToJson(this);
}

@JsonSerializable()
class WooProductCategory {
  int id;
  String name;
  String slug;
  WooProductCategory({this.id, this.name, this.slug});

  factory WooProductCategory.fromJson(Map<String, dynamic> json) =>
      _$WooProductCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductCategoryToJson(this);
}

@JsonSerializable()
class WooProductTag {
  int id;
  String name;
  String slug;
  WooProductTag({this.id, this.name, this.slug});

  factory WooProductTag.fromJson(Map<String, dynamic> json) =>
      _$WooProductTagFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductTagToJson(this);
}

@JsonSerializable()
class WooProductImage {
  int id;
  @JsonKey(name: 'date_created')
  DateTime dateCreated;
  @JsonKey(name: 'date_created_gmt')
  DateTime dateCreatedGMT;
  @JsonKey(name: 'date_modified')
  DateTime dateModified;
  @JsonKey(name: 'date_modified_gmt')
  DateTime dateModifiedGMT;
  String src;
  String name;
  String alt;
  WooProductImage({
    this.id,
    this.dateCreated,
    this.dateCreatedGMT,
    this.dateModified,
    this.dateModifiedGMT,
    this.name,
    this.src,
    this.alt,
  });

  factory WooProductImage.fromJson(Map<String, dynamic> json) =>
      _$WooProductImageFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductImageToJson(this);
}

@JsonSerializable()
class WooProductAttribute {
  int id;
  String name;
  String position;
  String visible;
  String variation;
  String options;
  WooProductAttribute({
    this.id,
    this.name,
    this.position,
    this.visible,
    this.variation,
    this.options,
  });

  factory WooProductAttribute.fromJson(Map<String, dynamic> json) =>
      _$WooProductAttributeFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductAttributeToJson(this);
}

@JsonSerializable()
class WooProductDefaultAttribute {
  int id;
  String name;
  String options;
  WooProductDefaultAttribute({
    this.id,
    this.name,
    this.options,
  });

  factory WooProductDefaultAttribute.fromJson(Map<String, dynamic> json) =>
      _$WooProductDefaultAttributeFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductDefaultAttributeToJson(this);
}

@JsonSerializable()
class WooProductMetaData {
  int id;
  String key;
  String value;
  WooProductMetaData({
    this.id,
    this.key,
    this.value,
  });

  factory WooProductMetaData.fromJson(Map<String, dynamic> json) =>
      _$WooProductMetaDataFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductMetaDataToJson(this);
}
