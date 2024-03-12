import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class SliderController extends GetxController{
  RxDouble opacity= 0.8.obs; // normally ata double hoito
  setOpacity(double value){
    opacity.value=value;
  }
}