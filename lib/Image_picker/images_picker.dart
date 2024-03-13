
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import 'package:image_picker/image_picker.dart';

import 'images_controller.dart';


class ImagePickerGetX extends StatefulWidget {
  const ImagePickerGetX({super.key});

  @override
  State<ImagePickerGetX> createState() => _ImagePickerGetXState();

  pickImage({required ImageSource source}) {}
}

class _ImagePickerGetXState extends State<ImagePickerGetX> {
  ///First off all Permission nite hbe
  ///Nicher line 2 ta,AndroidMenifest a add krte hbe
  ///<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
  /// <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />


  ImagesController imagesController= Get.put(ImagesController());

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title:  Text('Images Picker '),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(
              radius: 60,

         backgroundImage: imagesController.imagePath !=null?
         FileImage(File(imagesController.imagePath.toString())):null
            ),
       SizedBox(
         height: 20,
       ),
       OutlinedButton(onPressed: (){
         setState(() {
           imagesController.getImages();

         });
       }, child: Text('Gallary Image'))
          ],
        ),
      ),
    );
  }
}
