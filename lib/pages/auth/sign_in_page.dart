import 'package:delivery_app1/pages/auth/sign_up_page.dart';
import 'package:delivery_app1/utils/colors.dart';
import 'package:delivery_app1/utils/dimensions.dart';
import 'package:delivery_app1/widgets/app_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/Big_text.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: Dimensions.height45,
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
            Container(
              margin: EdgeInsets.only(left: Dimensions.width20),
              child: Text(
                'Welcome Back',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: Dimensions.height20 * 3,
            ),
            AppTextField(
                textController: emailController,
                hintText: 'Email',
                icon: Icons.email_outlined),
            SizedBox(
              height: Dimensions.height20,
            ),
            AppTextField(
                textController: passwordController,
                hintText: 'Password',
                icon: Icons.password_sharp),
            SizedBox(
              height: Dimensions.height20,
            ),
            Padding(
              padding: EdgeInsets.only(right: Dimensions.width120 / 2),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                RichText(
                    text: TextSpan(
                        text: 'Sign into your account',
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: Dimensions.font20))),
              ]),
            ),
            SizedBox(
              height: Dimensions.height20 * 3,
            ),
            Container(
              width: Dimensions.screenWidth / 2,
              height: Dimensions.height45 * 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: AppColors.mainColor),
              child: Center(
                  child: BigText(
                text: 'Sign in',
                size: Dimensions.font26 * 2,
                color: Colors.white,
              )),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            RichText(
                text: TextSpan(

                    text: "Don't have an account?",
                    style: TextStyle(
                        color: Colors.grey[500], fontSize: Dimensions.font16),
                    children: [
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(()=>SignUpPage(),transition: Transition.fade),
                      text: "   Create",
                      style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.grey[500], fontSize: Dimensions.font16))
                ])),
          ],
        ),
      ),
    );
  }
}
