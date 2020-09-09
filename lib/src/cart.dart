part of '../woocommerce_rest_api.dart';

class _WooCart {
  Future<SharedPreferences> get _sharedPreference {
    return SharedPreferences.getInstance();
  }

  Future<List<WooCartItem>> _getCartData() async {
    SharedPreferences pref = await _sharedPreference;
    String stringData = pref.getString('cart');
    if (stringData != null) {
      return (jsonDecode(stringData) as List)
          .map((item) => WooCartItem.fromJson(item))
          .toList();
    } else {
      return [];
    }
  }

  Future<List<WooCartItem>> addProductToCart(WooCartItem product) async {
    SharedPreferences pref = await _sharedPreference;
    List<WooCartItem> newItemList = <WooCartItem>[];
    List<WooCartItem> items = await _getCartData();
    newItemList = [...items];
    int index =
        newItemList.indexWhere((item) => item.product.id == product.product.id);
    if (index == -1) {
      newItemList.add(product);
    } else {
      newItemList[index].quantity += 1;
    }
    await pref.setString('cart', jsonEncode(newItemList));
    return newItemList;
  }

  Future<List<WooCartItem>> getCartList() async {
    SharedPreferences pref = await _sharedPreference;
    List<WooCartItem> items = await _getCartData();
    return items;
  }

  Future<List<WooCartItem>> updateList(WooCartItem product) async {
    SharedPreferences pref = await _sharedPreference;
    List<WooCartItem> newItemList = <WooCartItem>[];
    List<WooCartItem> items = await _getCartData();
    newItemList = [...items];
    int index =
        newItemList.indexWhere((item) => item.product.id == product.product.id);
    newItemList[index].quantity = product.quantity;
    await pref.setString('cart', jsonEncode(newItemList));
    return newItemList;
  }

  Future<List<WooCartItem>> deleteFromCart(List<int> ids) async {
    SharedPreferences pref = await _sharedPreference;
    List<WooCartItem> newItemList = <WooCartItem>[];
    List<WooCartItem> items = await _getCartData();
    newItemList = [...items];
    ids.forEach((id) {
      newItemList.removeWhere((element) => element.product.id == id);
    });
    if (newItemList.isEmpty) {
      await pref.remove('cart');
    } else {
      await pref.setString('cart', jsonEncode(newItemList));
    }

    return newItemList;
  }
}
