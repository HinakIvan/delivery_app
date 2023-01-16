class CartModel  {
  String id;
  String title;
  double price;
  String imageUrl;
  bool isFavorite;
  int? quantity;
  bool? isExist;
  String? time;

  CartModel({required this.id,
    required this.title,
    required this.imageUrl,
    this.isFavorite=false,
    required this.price,
  this.quantity,this.isExist,this.time});

  factory CartModel.fromJson(Map<String ,dynamic>json){
    return CartModel(
        id: json['id'],
        title: json['title'],
        imageUrl: json ['imageUrl'],
        price: json['price'],
        isFavorite: json ['isFavorite'],
    quantity :json ['quantity'],
     isExist :json['isExist'],
    time:json['time']);
  }}