// class Products {
//   late List<Product> _products;
//   List<Product> get products=>_products;
//   Products({required products}){
//     this._products=products;
//   }
//    Products.fromJson(Map<String,dynamic>json){
//     if(json['products']!=null){
//       _products=<Product>[];
//       json['products'].forEach((v){
//         _products!.add(new Product.fromJson(v));
//       });
//     }}}
class Product  {
   String id;
   String title;
   String description;
   double price;
   String imageUrl;
  bool isFavorite;

  Product({required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.isFavorite=false,
    required this.price,});

factory Product.fromJson(Map<String ,dynamic>json){
  return Product(
  id : json['id'],
  title : json['title'],
  description : json ['description'],
  imageUrl : json ['imageUrl'],
  price : json['price'],
  isFavorite : json ['isFavorite']);
}
}


