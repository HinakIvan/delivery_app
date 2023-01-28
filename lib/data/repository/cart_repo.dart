import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../models/cart_model.dart';

class CartRepo {
  final SharedPreferences sharedPreferences;
static const _keyCartList = 'Cart-List';

  CartRepo({required this.sharedPreferences});

  List<String> cart = [];
  List<String> cartHistory = [];

  // //convert objects to string
  // void addToCartList(List<CartModel> cartList) {
  //   cart = [];
  //   // var time = DateTime.now().toString();
  //   cartList.forEach((element){
  //   //   element.time =time;
  //     return cart.add(jsonEncode(element));});
  //   sharedPreferences.setStringList(_keyCartList, cart);
  //   print(sharedPreferences.getStringList(_keyCartList));
  //   // getCartList();
  // }
  //
  // List<CartModel> getCartList() {
  //   List<String> carts = [];
  //   if (
  //   sharedPreferences.containsKey(_keyCartList)) {
  //     carts = sharedPreferences.getStringList(_keyCartList)!;
  //     print(carts.toString());
  //   }
  //   List<CartModel> cartList = [];
  //   carts.forEach(
  //       (element) => cartList.add(CartModel.fromJson(jsonDecode(element))));
  //   return cartList;
  // }

  // List<CartModel> getCartHistoryList() {
  //   if (sharedPreferences.containsKey('cart-history-list')) {
  //     cartHistory = [];
  //     cartHistory = sharedPreferences.getStringList('cart-history-list')!;
  //   }
  //   List<CartModel> cartListHistory = [];
  //   cartHistory.forEach((element) =>
  //       cartListHistory.add(CartModel.fromJson(jsonDecode(element))));
  //   return cartListHistory;
  // }
  //
  // void addToCartHistoryList() {
  //   if (sharedPreferences.containsKey('cart-history-list')){
  //     cartHistory =sharedPreferences.getStringList('cart-history-list')!;
  //   }
  //   for (int i = 0; i < cart.length; i++) {
  //     cartHistory.add(cart[i]);
  //   }
  //   removeCart();
  //   sharedPreferences.setStringList('cart-history-list', cartHistory);
  // }
  //
  // void removeCart() {
  //   cart=[];
  //   sharedPreferences.remove('Cart-List');
  //
  // }
}
