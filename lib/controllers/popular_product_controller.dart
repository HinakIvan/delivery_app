import 'dart:convert';

import 'package:delivery_app1/data/repository/popular_product_repo.dart';
import 'package:delivery_app1/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  var productList = <Product>[].obs;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProducList();
    if (response.statusCode == 200) {
      print(response.body.runtimeType);
      print(response.body);
      print('got products');
      final _albumModel = json.decode(response.body) as Map<String, dynamic>;

      _albumModel.forEach((prodId, prodData) {
        productList.add(Product(
            id: prodId,
            title: prodData['title'],
            description: prodData['description'],
            price: prodData['price'],
            imageUrl: prodData['imageUrl'],
            isFavorite: prodData['isFavorite']));
      });
      print(productList);

      update();
    } else {
      Get.snackbar('Error Loading dots!', 'Server responsed (response.status)');
    }
  }
}
