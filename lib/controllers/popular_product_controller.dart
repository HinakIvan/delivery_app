import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:delivery_app1/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  var showFavorites= false;
  var _productList =  <Product>[].obs;
  List<Product> get productList => _productList;

  bool _isLoaded = false;
 bool get isLoaded => _isLoaded;

  @override
  void onInit(){
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
      var productsJson = json.decode(response.body) as Map<String ,dynamic> ;


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
_isLoaded=true;

    } else {print ("error");}
  }
}
