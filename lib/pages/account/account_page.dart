import 'package:delivery_app1/utils/colors.dart';
import 'package:delivery_app1/utils/dimensions.dart';
import 'package:delivery_app1/widgets/Big_text.dart';
import 'package:delivery_app1/widgets/account_widget.dart';
import 'package:delivery_app1/widgets/app_icon.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  AccountPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height45*2),
        child: Column(
          children: [
            AppIcon(
              icon: Icons.person,
              backgroundColor: AppColors.mainColor,
              iconcolor: Colors.white,
              size: Dimensions.iconSize24 * 6,
              iconSize: Dimensions.iconSize24 * 3,
            ),
            SizedBox(
              height: Dimensions.height30,
            ), Expanded(
              child: SingleChildScrollView(
                child: Column(children: [AccountWidget(
                  appIcon: AppIcon(
                    icon: Icons.person,
                    backgroundColor: AppColors.mainColor,
                    iconcolor: Colors.white,
                    size: Dimensions.iconSize24 * 2,
                    iconSize: Dimensions.iconSize24,
                  ),
                  bigText: BigText(
                    text: 'Ivan',
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
                      text: '1234567',
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
                      text: '@gmail.com',
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.width30,
                  ),
                  AccountWidget(
                    appIcon: AppIcon(
                      icon: Icons.location_on,
                      backgroundColor: AppColors.Color1,
                      iconcolor: Colors.white,
                      size: Dimensions.iconSize24 * 2,
                      iconSize: Dimensions.iconSize24,
                    ),
                    bigText: BigText(
                      text: 'Adress',
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.width30,
                  ),
                  AccountWidget(
                    appIcon: AppIcon(
                      icon: Icons.message_outlined,
                      backgroundColor: AppColors.Color2,
                      iconcolor: Colors.white,
                      size: Dimensions.iconSize24 * 2,
                      iconSize: Dimensions.iconSize24,
                    ),
                    bigText: BigText(
                      text: 'message',
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.width30,
                  ),],),
              ),
            )

          ],
        ),
      ),
    );
  }
}
