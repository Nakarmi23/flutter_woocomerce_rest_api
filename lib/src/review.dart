part of '../woocommerce_rest_api.dart';

class _WooReviewRepo {
  WooCommerceRestAPI instance;

  _WooReviewRepo(this.instance);

  Future<WooReview> getReviewById(int id) {
    return instance
        .baseGet('products/reviews/${id}')
        .then((value) => WooReview.fromJson(value));
  }

  Future<List<WooReview>> getReviews({WooReviewParam params}) async {
    return await instance
        .baseGet('products/reviews',
            params: params != null ? params.toJson() : {})
        .then((value) => (value as List)
            .map<WooReview>((product) => WooReview.fromJson(product))
            .toList());
  }

  Future<WooReview> createReview(WooReview data) {
    return instance
        .basePost('products/reviews', data.toJson())
        .then((value) => WooReview.fromJson(value));
  }

  Future<WooReview> updateReview(int id, WooReview data) {
    return instance
        .basePut('products/reviews/$id', data.toJson())
        .then((value) => WooReview.fromJson(value));
  }

  Future<WooReview> deleteReviewById(int id) {
    return instance
        .baseDelete('products/reviews/${id}')
        .then((value) => WooReview.fromJson(value));
  }
}
