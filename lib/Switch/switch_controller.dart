import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class SwitchController extends GetxController{
  RxBool data= false.obs;

  getSwitch(bool value){
    data.value =value;
  }

}