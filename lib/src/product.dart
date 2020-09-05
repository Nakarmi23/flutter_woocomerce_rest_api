part of '../woocommerce_rest_api.dart';

class _WooProductRepo {
  WooCommerceRestAPI instance;

  _WooProductRepo(this.instance);

  Future<WooProduct> getProductById(int id) {
    return instance
        .baseGet('products/${id}')
        .then((value) => WooProduct.fromJson(value));
  }

  Future<List<WooProduct>> getProducts({WooProductParam params}) async {
    return await instance
        .baseGet('products', params: params != null ? params.toJson() : {})
        .then((value) => (value as List)
            .map<WooProduct>((product) => WooProduct.fromJson(product))
            .toList());
  }

  Future<WooProduct> createProduct(WooProduct data) {
    return instance
        .basePost('products/', data.toJson())
        .then((value) => WooProduct.fromJson(value));
  }

  Future<WooProduct> updateProduct(int id, WooProduct data) {
    return instance
        .basePut('products/$id', data.toJson())
        .then((value) => WooProduct.fromJson(value));
  }

  Future<WooProduct> deleteProductById(int id) {
    return instance
        .baseDelete('products/${id}')
        .then((value) => WooProduct.fromJson(value));
  }
}
