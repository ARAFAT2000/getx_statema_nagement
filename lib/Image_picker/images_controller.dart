import 'dart:io';

import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:image_picker/image_picker.dart';

/// Small image is work is very good
/// and null checking

class ImagesController extends GetxController{
    RxString imagePath=''.obs;

Future<void> getImages()async{
  final  _picker = ImagePicker();
  final _image = await _picker.pickImage(source: ImageSource.gallery);
  if(_image !=null){
    imagePath.value= _image.path;

  }
}

}