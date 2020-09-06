// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'woo_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooCategory _$WooCategoryFromJson(Map<String, dynamic> json) {
  return WooCategory(
    id: json['id'] as int,
    name: json['name'] as String,
    slug: json['slug'] as String,
    parent: json['parent'] as int,
    description: json['description'] as String,
    display: json['display'] as String,
    menuOrder: json['menu_order'] as int,
    count: json['count'] as int,
    image: json['image'] == null
        ? null
        : WooCategoryImage.fromJson(json['image'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WooCategoryToJson(WooCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'parent': instance.parent,
      'description': instance.description,
      'display': instance.display,
      'image': instance.image,
      'menu_order': instance.menuOrder,
      'count': instance.count,
    };

WooCategoryImage _$WooCategoryImageFromJson(Map<String, dynamic> json) {
  return WooCategoryImage(
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

Map<String, dynamic> _$WooCategoryImageToJson(WooCategoryImage instance) =>
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
