import 'package:json_annotation/json_annotation.dart';

part 'woo_category.g.dart';

@JsonSerializable(explicitToJson: true)
class WooCategory {
  int id;
  String name;
  String slug;
  int parent;
  String description;
  String display;
  WooCategoryImage image;
  @JsonKey(name: 'menu_order')
  int menuOrder;
  int count;
  WooCategory({
    this.id,
    this.name,
    this.slug,
    this.parent,
    this.description,
    this.display,
    this.menuOrder,
    this.count,
    this.image,
  });

  WooCategory copyWith({
    int id,
    String name,
    String slug,
    int parent,
    String description,
    String display,
    int menuOrder,
    int count,
  }) {
    return WooCategory(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      parent: parent ?? this.parent,
      description: description ?? this.description,
      display: display ?? this.display,
      menuOrder: menuOrder ?? this.menuOrder,
      count: count ?? this.count,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is WooCategory &&
        o.id == id &&
        o.name == name &&
        o.slug == slug &&
        o.parent == parent &&
        o.description == description &&
        o.display == display &&
        o.menuOrder == menuOrder &&
        o.count == count;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        parent.hashCode ^
        description.hashCode ^
        display.hashCode ^
        menuOrder.hashCode ^
        count.hashCode;
  }

  factory WooCategory.fromJson(Map<String, dynamic> json) =>
      _$WooCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$WooCategoryToJson(this);
}

@JsonSerializable()
class WooCategoryImage {
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
  WooCategoryImage({
    this.id,
    this.dateCreated,
    this.dateCreatedGMT,
    this.dateModified,
    this.dateModifiedGMT,
    this.name,
    this.src,
    this.alt,
  });

  factory WooCategoryImage.fromJson(Map<String, dynamic> json) =>
      _$WooCategoryImageFromJson(json);

  Map<String, dynamic> toJson() => _$WooCategoryImageToJson(this);

  WooCategoryImage copyWith({
    String id,
    DateTime dateCreated,
    DateTime dateCreatedGMT,
    DateTime dateModified,
    DateTime dateModifiedGMT,
    String src,
    String name,
    String alt,
  }) {
    return WooCategoryImage(
      id: id ?? this.id,
      dateCreated: dateCreated ?? this.dateCreated,
      dateCreatedGMT: dateCreatedGMT ?? this.dateCreatedGMT,
      dateModified: dateModified ?? this.dateModified,
      dateModifiedGMT: dateModifiedGMT ?? this.dateModifiedGMT,
      src: src ?? this.src,
      name: name ?? this.name,
      alt: alt ?? this.alt,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is WooCategoryImage &&
        o.id == id &&
        o.dateCreated == dateCreated &&
        o.dateCreatedGMT == dateCreatedGMT &&
        o.dateModified == dateModified &&
        o.dateModifiedGMT == dateModifiedGMT &&
        o.src == src &&
        o.name == name &&
        o.alt == alt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        dateCreated.hashCode ^
        dateCreatedGMT.hashCode ^
        dateModified.hashCode ^
        dateModifiedGMT.hashCode ^
        src.hashCode ^
        name.hashCode ^
        alt.hashCode;
  }
}
