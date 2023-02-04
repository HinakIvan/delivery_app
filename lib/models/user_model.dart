import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel  {
  String? name;
  String? email;
  String? phone;

  UserModel({ this.name, this.email,  this.phone
    });

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String ,dynamic>> document){
  final data = document.data()! ;
    return UserModel(

        name : data['name'],
        email : data ['email'],
        phone : data ['phone'],
        );
  }


  Map<String,dynamic>toJson(){
    return {
      'name':this.name,
      'email':this.email,
      'phone':this.phone,

    };
  }




}
