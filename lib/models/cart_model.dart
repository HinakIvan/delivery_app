import 'package:delivery_app1/models/products_model.dart';

class CartModel  {
  String id;
  String title;
  double price;
  String imageUrl;
  bool isFavorite;
  int? quantity;
  bool? isExist;
  String? time;
  Product? product;

  CartModel({required this.id,
    required this.title,
    required this.imageUrl,
    this.isFavorite=false,
    required this.price,
  this.quantity,this.isExist,this.time,this.product});

  factory CartModel.fromJson(Map<String ,dynamic>json){
    return CartModel(
        id: json['id'],
        title: json['title'],
        imageUrl: json ['imageUrl'],
        price: json['price'],
        isFavorite: json ['isFavorite'],
    quantity :json ['quantity'],
     isExist :json['isExist'],
    time:json['time'],
        product:Product.fromJson(json['product']) );
  }
  Map<String,dynamic>toJson(){
    return {
      'id':this.id,
      'title':this.title,
      'price':this.price,
      'imageUrl':this.imageUrl,
      'isFavorite':this.isFavorite,
      'quantity':this.quantity,
      'isExist':this.isExist,
      'time':this.time,
'product':this.product!.toJson()
    };
  }
}