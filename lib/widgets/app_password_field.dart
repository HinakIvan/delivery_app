import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class AppPasswordField extends StatefulWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;

  // final IconData suffixIcon;
  final TextInputType textInputType;
  final Color colorIcon;

  AppPasswordField({
    Key? key,
    required this.textController,
    required this.hintText,
    required this.icon,
    required this.textInputType,
    // required this.suffixIcon,
    required this.colorIcon,
  }) : super(key: key);

  @override
  State<AppPasswordField> createState() => _AppPasswordFieldState();
}

class _AppPasswordFieldState extends State<AppPasswordField> {
  bool isObscure =true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: Dimensions.height20, right: Dimensions.height20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 7,
                offset: Offset(1, 10),
                color: Colors.grey.withOpacity(0.2))
          ]),
      child: TextFormField(
        keyboardType: widget.textInputType,
        obscureText: isObscure,
        controller: widget.textController,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              color: widget.colorIcon,
              icon: Icon(isObscure?Icons.visibility:Icons.visibility_off),
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
            ),
            hintText: widget.hintText,
            prefixIcon: Icon(
              widget.icon,
              color: AppColors.Color1,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              borderSide: BorderSide(width: 1, color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              borderSide: BorderSide(width: 1, color: Colors.white),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
            )),
      ),
    );
  }


}
