part of '../woocommerce_rest_api.dart';

class _WooOrderRepo {
  WooCommerceRestAPI instance;

  _WooOrderRepo(this.instance);

  Future<WooOrder> getCustomerById(int id) {
    return instance
        .baseGet('orders/${id}')
        .then((value) => WooOrder.fromJson(value));
  }

  Future<List<WooOrder>> getCustomers({WooOrderParam params}) async {
    return await instance
        .baseGet('orders', params: params != null ? params.toJson() : {})
        .then((value) => (value as List)
            .map<WooOrder>((product) => WooOrder.fromJson(product))
            .toList());
  }

  Future<WooOrder> createCustomer(WooOrder data) {
    return instance
        .basePost('orders', data.toJson())
        .then((value) => WooOrder.fromJson(value));
  }

  Future<WooOrder> updateCustomer(int id, WooOrder data) {
    return instance
        .basePut('orders/$id', data.toJson())
        .then((value) => WooOrder.fromJson(value));
  }

  Future<WooOrder> deleteCustomerById(int id) {
    return instance
        .baseDelete('orders/${id}')
        .then((value) => WooOrder.fromJson(value));
  }
}
