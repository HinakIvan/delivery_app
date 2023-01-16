import 'package:delivery_app1/models/products_model.dart';
import 'package:get/get.dart';

import '../models/cart_model.dart';

class CartController extends GetxController {
  Map<String, CartModel> _items = {};

  Map<String,CartModel> get items=>_items;

  void addItem(Product product, int quantity) {
    if(_items.containsKey(product.id)){
_items.update(product.id!, (value) {
  return CartModel(
      id: value.id,
      title: value.title,
      imageUrl: value.imageUrl,
      price: value.price,
      quantity: value.quantity!+quantity,
      isExist: true,
      time: DateTime.now().toString());
});
    }else{_items.putIfAbsent(product.id, () {
      return CartModel(
          id: product.id,
          title: product.title,
          imageUrl: product.imageUrl,
          price: product.price,
          quantity: quantity,
          isExist: true,
          time: DateTime.now().toString());
    });}
    

  }
}
