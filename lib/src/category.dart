part of '../woocommerce_rest_api.dart';

class _WooCategoryRepo {
  WooCommerceRestAPI instance;

  _WooCategoryRepo(this.instance);

  Future<WooProductCategory> getProductById(int id) {
    return instance
        .baseGet('products/categories/${id}')
        .then((value) => WooProductCategory.fromJson(value));
  }

  Future<List<WooProductCategory>> getProducts(WooCategoryParam param) {
    return instance.baseGet('products/categories').then((value) =>
        value.map((product) => WooProductCategory.fromJson(product)).toList());
  }

  Future<WooProductCategory> createProduct(WooProductCategory data) {
    return instance
        .basePost('products/categories', data.toJson())
        .then((value) => WooProductCategory.fromJson(value));
  }

  Future<WooProductCategory> updateProduct(int id, WooProductCategory data) {
    return instance
        .basePut('products/categories/$id', data.toJson())
        .then((value) => WooProductCategory.fromJson(value));
  }

  Future<WooProductCategory> deleteProductById(int id) {
    return instance
        .baseDelete('products/categories/${id}')
        .then((value) => WooProductCategory.fromJson(value));
  }
}
