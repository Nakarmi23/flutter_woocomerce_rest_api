part of '../woocommerce_rest_api.dart';

class _WooCustomerRepo {
  WooCommerceRestAPI instance;

  _WooCustomerRepo(this.instance);

  Future<WooCustomer> getCustomerById(int id) {
    return instance
        .baseGet('customers/${id}')
        .then((value) => WooCustomer.fromJson(value));
  }

  Future<List<WooCustomer>> getCustomers({WooCustomerParam params}) async {
    return await instance
        .baseGet('customers', params: params != null ? params.toJson() : {})
        .then((value) => (value as List)
            .map<WooCustomer>((product) => WooCustomer.fromJson(product))
            .toList());
  }

  Future<WooCustomer> createCustomer(WooCustomer data) {
    return instance
        .basePost('customers', data.toJson())
        .then((value) => WooCustomer.fromJson(value));
  }

  Future<WooCustomer> updateCustomer(int id, WooCustomer data) {
    return instance
        .basePut('customers/$id', data.toJson())
        .then((value) => WooCustomer.fromJson(value));
  }

  Future<WooCustomer> deleteCustomerById(int id) {
    return instance
        .baseDelete('customers/${id}')
        .then((value) => WooCustomer.fromJson(value));
  }
}
