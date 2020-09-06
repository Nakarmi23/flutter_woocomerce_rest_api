part of '../woocommerce_rest_api.dart';

class _WooCategoryRepo {
  WooCommerceRestAPI instance;

  _WooCategoryRepo(this.instance);

  Future<WooCategory> getCategoryById(int id) {
    return instance
        .baseGet('products/categories/${id}')
        .then((value) => WooCategory.fromJson(value));
  }

  Future<List<WooCategory>> getCategories(WooCategoryParam params) {
    return instance
        .baseGet('products/categories',
            params: params != null ? params.toJson() : {})
        .then((value) {
      List<WooCategory> category = (value as List).map<WooCategory>((category) {
        return WooCategory.fromJson(category);
      }).toList();
      return category;
    });
  }

  Future<WooCategory> createCategory(WooCategory data) {
    return instance
        .basePost('products/categories', data.toJson())
        .then((value) => WooCategory.fromJson(value));
  }

  Future<WooCategory> updateCategory(int id, WooCategory data) {
    return instance
        .basePut('products/categories/$id', data.toJson())
        .then((value) => WooCategory.fromJson(value));
  }

  Future<WooCategory> deleteCategoryById(int id) {
    return instance
        .baseDelete('products/categories/${id}')
        .then((value) => WooCategory.fromJson(value));
  }
}
