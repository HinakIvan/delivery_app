class UserModel  {
  String id;
  String name;
  String email;
  int phone;

  UserModel({required this.id,required this.name,required this.email,required this.phone
    });

  factory UserModel.fromJson(Map<String ,dynamic>json){
    return UserModel(
        id : json['id'],
        name : json['name'],
        email : json ['email'],
        phone : json ['phone'],
        );
  }


  Map<String,dynamic>toJson(){
    return {
      'id':this.id,
      'name':this.name,
      'email':this.email,
      'phone':this.phone,

    };
  }


}
