part of '../woocommerce_rest_api.dart';

class _TPWishlist {
  WooCommerceRestAPI instance;

  _TPWishlist(this.instance);

  Future<TIWishList> getWishlistByShareKey(String shareKey) {
    return instance
        .baseGet('wishlist/get_by_share_key/${shareKey}')
        .then((value) => TIWishList.fromJson(value));
  }

  Future<List<TIWishList>> getWishlistByUser(int id) {
    return instance.baseGet('wishlist/get_by_user/${id}').then(
        (value) => (value as List).map((e) => TIWishList.fromJson(e)).toList());
  }

  Future<TIWishList> createWishlist(TIWishList data) {
    return instance
        .basePost('wishlist/create', data.toJson())
        .then((value) => TIWishList.fromJson(value));
  }

  Future<WooOrder> updateWishlist(String shareKey, TIWishList data) {
    return instance
        .basePost('wishlist/update/${shareKey}', data.toJson())
        .then((value) => WooOrder.fromJson(value));
  }

  Future<WooOrder> deleteWishlist(String shareKey) {
    return instance
        .baseGet('wishlist/delete/${shareKey}')
        .then((value) => WooOrder.fromJson(value));
  }
}
