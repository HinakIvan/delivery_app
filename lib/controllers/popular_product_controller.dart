import 'dart:convert';
import 'package:delivery_app1/controllers/cart_controller.dart';
import 'package:delivery_app1/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:delivery_app1/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  var showFavorites = false;
  var _productList = <Product>[].obs;

  List<Product> get productList => _productList;
  late CartController _cart;

  bool _isLoaded = false;

  bool get isLoaded => _isLoaded;

  int _quantity = 0;

  int get quantity => _quantity;
  int _inCartIrems = 0;

  int get inCartItems => _inCartIrems + _quantity;

  @override
  void onInit() {
    super.onInit();
    getPopularProductList();
  }

  List<Product> get favoriteItem {
    return _productList.where((prodItem) => prodItem.isFavorite).toList();
  }

  Future<void> getPopularProductList() async {
    var url = Uri.https(
        'shop-app-flutter-a42ca-default-rtdb.firebaseio.com', '/products.json');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body.runtimeType);
      print('got products');
      var productsJson = json.decode(response.body) as Map<String, dynamic>;

      productsJson.forEach((prodId, prodData) {
        _productList.add(Product(
            id: prodId,
            title: prodData['title'],
            description: prodData['description'],
            price: prodData['price'],
            imageUrl: prodData['imageUrl'],
            isFavorite: prodData['isFavorite']));
      });
      // for (var product in productsJson){
      //   productList.add(Product.fromJson(product));
      // }
//       productList.add(
// productsJson
//             // Product(
//             // id:productsJson.id,
//             // title: productsJson.title,
//             // description: productsJson.description,
//             // price: productsJson.price,
//             // imageUrl: productsJson.imageUrl,
//             // isFavorite: productsJson.isFavorite)
//       );
//       print(_productList.length);
      _isLoaded = true;
    } else {
      print("error");
    }
    update();
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if (quantity < 0) {
      Get.snackbar('Item count', "You can't reduce more!",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 0;
    } else if (quantity > 20) {
      Get.snackbar('Item count', "You can't add more!",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);

      return 20;
    } else {
      return quantity;
    }
  }

  void initProduc(CartController cart) {
    _quantity = 0;
    _inCartIrems = 0;
    _cart = cart;
  }

  void addItem(Product product) {
    if (_quantity > 0) {
      _cart.addItem(product, _quantity);
      _quantity=0;
    } else {
      Get.snackbar('Item count', "You should at least add an item in the cart!",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
    }
  }
}
