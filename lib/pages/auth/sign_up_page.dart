import 'package:delivery_app1/utils/colors.dart';
import 'package:delivery_app1/utils/dimensions.dart';
import 'package:delivery_app1/widgets/app_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/Big_text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var singUpImages = [
     "g.jpg",
        "twitter.jpg",
      "facebook.jpg"
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: Dimensions.height45,
            ),
            Container(
              height: Dimensions.height100*1.5,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 110,
                  backgroundImage: AssetImage('assets/image/logo.jpg'),
                ),
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
            AppTextField(
                textController: nameController,
                hintText: 'Name',
                icon: Icons.person),
            SizedBox(
              height: Dimensions.height20,
            ),
            AppTextField(
                textController: phoneController,
                hintText: 'Phone',
                icon: Icons.phone),
            SizedBox(
              height: Dimensions.height20,
            ),
            Container(
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
            SizedBox(
              height: Dimensions.height10,
            ),
            RichText(
                text: TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                    text: 'Have an account already?',
                    style: TextStyle(
                        color: Colors.grey[500], fontSize: Dimensions.font20))),
            SizedBox(
              height: Dimensions.height20,
            ),
            RichText(
                text: TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                    text: 'Sign up using oneof the following methods',
                    style: TextStyle(
                        color: Colors.grey[500], fontSize: Dimensions.font16))),
            Wrap(
              children: List.generate(
                  3,
                  (index) => Padding(padding: EdgeInsets.all(8),
                    child: CircleAvatar(
                          radius: Dimensions.radius30,backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage('assets/image/' + singUpImages[index]),
                        ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
