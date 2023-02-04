import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app1/home/home_page.dart';
import 'package:delivery_app1/pages/auth/sign_up_page.dart';
import 'package:delivery_app1/pages/splash/splash_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../models/user_model.dart';
import '../pages/auth/sign_in_page.dart';

class AuthController extends GetxController {
  static final AuthController instance = Get.find();
  late final Rx<User?> firebaseUser;
  List<String> docIds = [];
  var myUser = UserModel().obs;
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore= FirebaseFirestore.instance;

  @override
  void onReady() {
    super.onReady();
    firebaseUser = Rx<User?>(_auth.currentUser);
    //our user will be notified
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _initialScreen);
  }

  // _initialScreen(User? user) {
  //   if (user == null) {
  //     print('login page');
  //     Get.offAll(() => SignUpPage());
  //   } else {
  //     Get.offAll(() => HomePage());
  //   }
  // }

  _initialScreen(User? user){
    user == null ? Get.offAll(()=> SignInPage()):Get.offAll(()=>SplashScreen());
  }

  void signUp(String email, password) async{
    try {
   await  _auth.createUserWithEmailAndPassword(email: email, password: password);

    } catch (e) {
      Get.snackbar('About User', 'User message',
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            'Account creation failed',
            style: TextStyle(color: Colors.white),
          ),
          messageText:
              Text(e.toString(), style: TextStyle(color: Colors.white)));
    }
  }

  // Future<void> signInWithGoogle()async{
  //   final
  // }


  void signIn(String email, password) async{
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar('About Login', 'Login message',
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            'Login failed',
            style: TextStyle(color: Colors.white),
          ),
          messageText:
          Text(e.toString(), style: TextStyle(color: Colors.white)));
    }
  }

  void signOut()async{
   await _auth.signOut();
  }

  Future<void > saveUser (String name, String phone,String email )async{
   await _firestore.collection('users').add({
      'name': name,
      'phone':phone,
      'email':email
    });

  }

  Future <UserModel> getDocId(String email) async {
    // String uid = FirebaseAuth.instance.currentUser!.uid;
   final snapshot=  await FirebaseFirestore.instance.collection('users').where('email',isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    return userData;
    //     .doc(uid).snapshots().listen((event) {
    //   myUser.value = UserModel.fromJson(event.data()!);
    // });
  }

  signInWithGoogle()async{
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    final credential = GoogleAuthProvider.credential(accessToken: gAuth.accessToken,idToken: gAuth.idToken);
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }


}
