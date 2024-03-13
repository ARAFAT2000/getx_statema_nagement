import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class LoveController extends GetxController{
 RxList<String> name=['Mithila','Arafat',' Zaman','Maliha','Momotaz'].obs;
 RxList  isTempname =[].obs;

getaddLove(String value){
 isTempname.add(value);
}

 removeLove(String value1){
  isTempname.remove(value1);
 }

}