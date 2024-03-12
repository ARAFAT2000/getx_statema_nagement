import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';

class TransLation extends StatelessWidget {
  const TransLation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: Text('GetX TransLation '),
       ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name'.tr),
            Text('title'.tr),

            SizedBox(
              height: 20,
            ),


      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(onPressed:(){
            Get.updateLocale(Locale('en','US'));
          },
              child: Text('English')),
          SizedBox(
            width: 10,
          ),
          OutlinedButton(onPressed: (){
            Get.updateLocale(Locale('fr','fr'));
          }, child: Text('France')),
        ],
      )
          ],
        ),
      ),
    );
  }
}
