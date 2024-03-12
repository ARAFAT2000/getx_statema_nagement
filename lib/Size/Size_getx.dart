import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';


class SizeGetX extends StatelessWidget {
  const SizeGetX({super.key});

  @override
  Widget build(BuildContext context) {
  final height= MediaQuery.of(context).size.height*1;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Size Discuss GetX '),
      ),
      body: Column(
        children: [
          Container(
            height: Get.height * 0.3,
            color: Colors.yellow,
          ),

          Container(
            width: Get.width*0.9,
            height: Get.height * 0.4,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
