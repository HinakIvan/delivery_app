import 'package:delivery_app1/controllers/auth_controller.dart';
import 'package:delivery_app1/helper/dependecies.dart';
import 'package:delivery_app1/models/user_model.dart';
import 'package:delivery_app1/utils/colors.dart';
import 'package:delivery_app1/utils/dimensions.dart';
import 'package:delivery_app1/widgets/Big_text.dart';
import 'package:delivery_app1/widgets/account_widget.dart';
import 'package:delivery_app1/widgets/app_icon.dart';
import 'package:delivery_app1/widgets/user_image_picker.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AccountPage extends StatelessWidget {
  AccountPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    AuthController authController = Get.find<AuthController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Center(
          child: BigText(
            text: 'Profile',
            size: Dimensions.font26,
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder(
        future: authController
            .getDocId(authController.firebaseUser.value!.email.toString()),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              UserModel userData = snapshot.data as UserModel;
              return Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: Dimensions.height45 * 2),
                child: Column(
                  children: [
                     UserImagePicker(),
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            AccountWidget(
                              appIcon: AppIcon(
                                icon: Icons.person,
                                backgroundColor: AppColors.mainColor,
                                iconcolor: Colors.white,
                                size: Dimensions.iconSize24 * 2,
                                iconSize: Dimensions.iconSize24,
                              ),
                              bigText: BigText(
                                text: userData.name.toString(),
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.width30,
                            ),
                            AccountWidget(
                              appIcon: AppIcon(
                                icon: Icons.phone,
                                backgroundColor: AppColors.Color1,
                                iconcolor: Colors.white,
                                size: Dimensions.iconSize24 * 2,
                                iconSize: Dimensions.iconSize24,
                              ),
                              bigText: BigText(
                                text: userData.phone.toString(),
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.width30,
                            ),
                            AccountWidget(
                              appIcon: AppIcon(
                                icon: Icons.email_outlined,
                                backgroundColor: AppColors.Color1,
                                iconcolor: Colors.white,
                                size: Dimensions.iconSize24 * 2,
                                iconSize: Dimensions.iconSize24,
                              ),
                              bigText: BigText(
                                text: user.email!,
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.width30,
                            ),
                            // AccountWidget(
                            //   appIcon: AppIcon(
                            //     icon: Icons.location_on,
                            //     backgroundColor: AppColors.Color1,
                            //     iconcolor: Colors.white,
                            //     size: Dimensions.iconSize24 * 2,
                            //     iconSize: Dimensions.iconSize24,
                            //   ),
                            //   bigText: BigText(
                            //     text: 'Adress',
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: Dimensions.width30,
                            // ),
                            GestureDetector(
                              onTap: () {
                                AuthController.instance.signOut();
                              },
                              child: AccountWidget(
                                appIcon: AppIcon(
                                  icon: Icons.logout_outlined,
                                  backgroundColor: AppColors.Color2,
                                  iconcolor: Colors.white,
                                  size: Dimensions.iconSize24 * 2,
                                  iconSize: Dimensions.iconSize24,
                                ),
                                bigText: BigText(
                                  text: 'Log out',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.width30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Center(
                  child: BigText(
                text: 'Something went wrong',
              ));
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
