import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../models/cart_model.dart';

class CartRepo {
  final SharedPreferences sharedPreferences;

  CartRepo({required this.sharedPreferences});

  List<String> cart = [];

  //convert objects to string
  void addToCartList(List<CartModel> cartList) {
    cart = [];

    cartList.forEach((element) => cart.add(jsonEncode(element)));
    sharedPreferences.setStringList('Cart-List', cart);
  }

  List<CartModel> getCartList() {
    List<String> carts = [];
    if (sharedPreferences.containsKey('Cart-List')) {
      carts = sharedPreferences.getStringList('Cart-List')!;
    }
    List<CartModel> cartList = [];

    carts.forEach((element) => cartList.add(CartModel.fromJson(jsonDecode(element))));
    return cartList;
  }
}
