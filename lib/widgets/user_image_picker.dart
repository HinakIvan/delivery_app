import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/auth_controller.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'app_icon.dart';

class UserImagePicker extends StatefulWidget {
  const UserImagePicker({Key? key}) : super(key: key);

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  File? _image;

  Future<void> pickImage() async {
    PickedFile? pickedImageFile =
        await ImagePicker.platform.pickImage(source: ImageSource.camera);
    if (pickedImageFile == null) return;
    File? imageFile = File(pickedImageFile.path);
    setState(() {
      _image = imageFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      _image != null
          ? CircleAvatar(
              radius: Dimensions.iconSize20*4,
              backgroundImage: FileImage(_image!),
            )
          : AppIcon(
              icon: Icons.person,
              backgroundColor: AppColors.mainColor,
              iconcolor: Colors.white,
              size: Dimensions.iconSize24 * 6,
              iconSize: Dimensions.iconSize24 * 3,
            ),
      Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
              onTap: () {
                pickImage();
              },
              child: AppIcon(
                icon: Icons.add_a_photo_outlined,
                backgroundColor: AppColors.Color1,
                iconcolor: Colors.white,
                size: Dimensions.iconSize16 * 2,
                iconSize: Dimensions.iconSize24,
              ))),
    ]);
  }
}
