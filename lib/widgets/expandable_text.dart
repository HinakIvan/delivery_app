import 'package:delivery_app1/utils/colors.dart';
import 'package:delivery_app1/utils/dimensions.dart';
import 'package:delivery_app1/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 5.25;

  //exelent logic for hide rest of text
  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: secondHalf.isEmpty
            ? SmallText(height:1.8,size: Dimensions.font16,color:AppColors.textColor,
                text: firstHalf,
              )
            : Column(
                children: [
                  SmallText(height:1.8,color:AppColors.textColor,size: Dimensions.font16,
                      text: hiddenText
                          ? (firstHalf + '...')
                          : firstHalf + secondHalf),
                  InkWell(
                    onTap: () {
                      setState((){
                        //make hiddenText false
                        hiddenText=!hiddenText;
                      });
                    },
                    child: Row(
                      children: [
                        SmallText(size: Dimensions.font16,
                          text:hiddenText?'show more': 'hide',
                          color: AppColors.mainColor,
                        ),
                        Icon(
                        hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,
                          color: AppColors.mainColor,
                        )
                      ],
                    ),
                  )
                ],
              ));
  }
}
