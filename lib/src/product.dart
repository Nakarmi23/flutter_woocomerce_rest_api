part of '../woocommerce_rest_api.dart';

class _WooProductRepo {
  WooCommerceRestAPI instance;

  _WooProductRepo(this.instance);

  Future<WooProduct> getProductById(int id) {
    return instance
        .baseGet('products/${id}')
        .then((value) => WooProduct.fromJson(value));
  }
}
