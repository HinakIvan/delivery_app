import 'package:delivery_app1/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'Big_text.dart';
import 'Icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                      (index) => Icon(
                    Icons.star,
                    color: AppColors.mainColor,
                    size: 15,
                  )),
            ),
            SizedBox(
              width: Dimensions.width15,
            ),
            SmallText(
              text: '4.5',
            ),
            SizedBox(
              width: Dimensions.width20,
            ),
            SmallText(text: '1372'),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: 'comments')
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: 'Normal',
                iconcolor: AppColors.Color1),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: '1.7',
                iconcolor: AppColors.mainColor),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: '32min',
                iconcolor: AppColors.Color2)
          ],
        )
      ],
    );
  }
}
