import 'package:json_annotation/json_annotation.dart';

part 'ti_wishlist.g.dart';

@JsonSerializable(includeIfNull: false)
class TIWishList {
  int id;
  @JsonKey(name: 'user_id')
  int userId;
  @JsonKey(name: 'date_added')
  DateTime dateAdded;
  String title;
  @JsonKey(name: 'share_key')
  String shareKey;
  TIWishListStatus status;
  TIWishList({
    this.id,
    this.userId,
    this.dateAdded,
    this.title,
    this.shareKey,
    this.status,
  });

  factory TIWishList.fromJson(Map<String, dynamic> json) =>
      _$TIWishListFromJson(json);

  Map<String, dynamic> toJson() => _$TIWishListToJson(this);

  TIWishList copyWith(
      {int id,
      int userId,
      int dateAdded,
      String title,
      String shareKey,
      TIWishListStatus status}) {
    return TIWishList(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      dateAdded: dateAdded ?? this.dateAdded,
      title: title ?? this.title,
      shareKey: shareKey ?? this.shareKey,
      status: status ?? this.status,
    );
  }
}

enum TIWishListStatus { public, share, private }
