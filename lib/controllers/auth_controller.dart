import 'package:delivery_app1/home/home_page.dart';
import 'package:delivery_app1/pages/auth/sign_up_page.dart';
import 'package:delivery_app1/pages/splash/splash_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/auth/sign_in_page.dart';

class AuthController extends GetxController {
  static final AuthController instance = Get.find();
  late final Rx<User?> firebaseUser;
  FirebaseAuth _auth = FirebaseAuth.instance;

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


}
