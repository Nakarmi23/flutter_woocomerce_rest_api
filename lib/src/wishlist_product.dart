part of '../woocommerce_rest_api.dart';

class _TPWishlistProduct {
  WooCommerceRestAPI instance;

  _TPWishlistProduct(this.instance);

  Future<List<TIWishListProduct>> getWishlistProducts(String shareKey,
      {TIWishlistProductParam param}) {
    return instance
        .baseGet('wishlist/$shareKey/get_products',
            params: param != null ? param.toJson() : {})
        .then((value) =>
            (value as List).map((e) => TIWishListProduct.fromJson(e)).toList());
  }

  Future<List<TIWishListProduct>> addWishListProduct(
      String shareKey, TIWishListProduct data) {
    return instance
        .basePost('wishlist/$shareKey/add_product', data.toJson())
        .then((value) =>
            (value as List).map((e) => TIWishListProduct.fromJson(e)).toList());
  }

  Future<String> removeWishListProduct(int id) {
    return instance
        .baseGet('wishlist/remove_product/$id')
        .then((value) => value as String);
  }
}
