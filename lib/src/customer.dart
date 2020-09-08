part of '../woocommerce_rest_api.dart';

class _WooCustomerRepo {
  WooCommerceRestAPI instance;

  _WooCustomerRepo(this.instance);

  Future<WooCustomer> getReviewById(int id) {
    return instance
        .baseGet('products/reviews/${id}')
        .then((value) => WooCustomer.fromJson(value));
  }

  Future<List<WooCustomer>> getReviews({WooCustomerParam params}) async {
    return await instance
        .baseGet('products/reviews',
            params: params != null ? params.toJson() : {})
        .then((value) => (value as List)
            .map<WooCustomer>((product) => WooCustomer.fromJson(product))
            .toList());
  }

  Future<WooCustomer> createReview(WooCustomer data) {
    return instance
        .basePost('products/reviews', data.toJson())
        .then((value) => WooCustomer.fromJson(value));
  }

  Future<WooCustomer> updateReview(int id, WooCustomer data) {
    return instance
        .basePut('products/reviews/$id', data.toJson())
        .then((value) => WooCustomer.fromJson(value));
  }

  Future<WooCustomer> deleteReviewById(int id) {
    return instance
        .baseDelete('products/reviews/${id}')
        .then((value) => WooCustomer.fromJson(value));
  }
}
