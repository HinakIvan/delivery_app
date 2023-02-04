import 'package:delivery_app1/controllers/auth_controller.dart';
import 'package:delivery_app1/pages/auth/sign_in_page.dart';
import 'package:delivery_app1/utils/colors.dart';
import 'package:delivery_app1/utils/dimensions.dart';
import 'package:delivery_app1/widgets/app_password_field.dart';
import 'package:delivery_app1/widgets/app_text_field.dart';
import 'package:delivery_app1/widgets/show_custom_snackbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/sign_up_body_model.dart';
import '../../widgets/Big_text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var repeatPasswordController = TextEditingController();
    var singUpImages = ["g.jpg", "twitter.jpg", "facebook.jpg"];

    void _registration() {
      String name = nameController.text.trim();
      String phone = phoneController.text.trim();
      String email = emailController.text.trim();
      String password = passwordController.text.trim();
      String repeatPassword = repeatPasswordController.text.trim();

      if (name.isEmpty) {
        showCustomSnackBar('Type in your name', title: 'Name');
      } else if (phone.length < 9) {
        showCustomSnackBar('Type in your phone number', title: 'Phone number');
      } else if (email.isEmpty) {
        showCustomSnackBar('Type in your email address', title: 'Email');
      } else if (GetUtils.isEmail(email)) {
        showCustomSnackBar('Type in a valid email address',
            title: 'Valid email address');
      } else if (password.isEmail) {
        showCustomSnackBar('Type in your password', title: 'password');
      } else if (password.length < 6) {
        showCustomSnackBar('Password can not be less than six characters',
            title: 'Password');
      } else if (repeatPassword != password) {
        showCustomSnackBar('Password does not match', title: 'Password');
      } else {
        showCustomSnackBar('All went well', title: 'Perfect');
        SignUpBody signUpBody = SignUpBody(
            name: name, phone: phone, email: email, password: password);
        print(signUpBody.toString());
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: Dimensions.height30,
            ),
            Container(
              height: Dimensions.height100 * 1.5,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 110,
                  backgroundImage: AssetImage('assets/image/logo.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            AppTextField(
                textInputType: TextInputType.text,
                textController: nameController,
                hintText: 'Name',
                icon: Icons.person,
                suffixIcon: Icons.delete_outline,
                colorIcon: AppColors.deleteColor),
            SizedBox(
              height: Dimensions.height20,
            ),
            AppTextField(
              textInputType: TextInputType.phone,
              textController: phoneController,
              hintText: 'Phone',
              icon: Icons.phone,
              suffixIcon: Icons.delete_outline,
              colorIcon: AppColors.deleteColor,
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            AppTextField(
                suffixIcon: Icons.delete_outline,
                colorIcon: AppColors.deleteColor,
                textInputType: TextInputType.text,
                textController: emailController,
                hintText: 'Email',
                icon: Icons.email_outlined),
            SizedBox(
              height: Dimensions.height20,
            ),
            AppPasswordField(
              textInputType: TextInputType.text,
              textController: passwordController,
              hintText: 'Password',
              icon: Icons.password_sharp,
              colorIcon: Colors.grey,
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            AppPasswordField(
                textInputType: TextInputType.text,
                textController: repeatPasswordController,
                hintText: ' Repeat password',
                icon: Icons.password_sharp,
                colorIcon: Colors.grey),
            SizedBox(
              height: Dimensions.height20,
            ),
            GestureDetector(
              onTap: () {
                _registration();
                AuthController.instance.saveUser(nameController.text.trim(),
                    phoneController.text.trim(), emailController.text.trim());
                AuthController.instance.signUp(emailController.text.trim(),
                    passwordController.text.trim());

              },
              child: Container(
                width: Dimensions.screenWidth / 2,
                height: Dimensions.height45 * 1.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius30),
                    color: AppColors.mainColor),
                child: Center(
                    child: BigText(
                  text: 'Sign up',
                  size: Dimensions.font26 * 2,
                  color: Colors.white,
                )),
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            RichText(
                text: TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(() => SignInPage(),
                          transition: Transition.fade),
                    text: 'Have an account already?',
                    style: TextStyle(
                        color: Colors.grey[500], fontSize: Dimensions.font20))),
            SizedBox(
              height: Dimensions.height20,
            ),
            RichText(
                text: TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.back(),
                    text: 'Sign up using one of the following methods',
                    style: TextStyle(
                        color: Colors.grey[500], fontSize: Dimensions.font16))),
            // Row ( mainAxisAlignment: MainAxisAlignment.center,children: [ Padding(
            //        padding: EdgeInsets.all(8),
            //        child: CircleAvatar(
            //          radius: Dimensions.radius30,
            //          backgroundColor: Colors.white,
            //          backgroundImage:
            //          AssetImage('assets/image/g.jpg' ),
            //        ),
            //      ),Padding(
            //    padding: EdgeInsets.all(8),
            //    child: CircleAvatar(
            //      radius: Dimensions.radius30,
            //      backgroundColor: Colors.white,
            //      backgroundImage:
            //      AssetImage('assets/image/facebook.jpg' ),
            //    ),
            //  ),Padding(
            //    padding: EdgeInsets.all(8),
            //    child: GestureDetector(onTap: (){AuthController.instance.signInWithGoogle();},
            //      child: CircleAvatar(
            //        radius: Dimensions.radius30,
            //        backgroundColor: Colors.white,
            //        backgroundImage:
            //        AssetImage('assets/image/twitter.jpg' ),
            //      ),
            //    ),
            //  ),]),
          ],
        ),
      ),
    );
  }
}
