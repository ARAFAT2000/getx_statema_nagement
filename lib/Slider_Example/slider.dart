import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getx_statema_nagement/Slider_Example/slider_controller.dart';


class SliderGetX extends StatefulWidget {
  const SliderGetX({super.key});

  @override
  State<SliderGetX> createState() => _SliderGetXState();
}

class _SliderGetXState extends State<SliderGetX> {

  final SliderController c= Get.put(SliderController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Slider App GetX '),
      ),
      body: Center(
        child: Column(

          children: [
           Obx(() =>  Container(
             margin: EdgeInsets.only(top: 20),
             height: Get.height*0.2,
             width: Get.width*0.9,
             child: Center(child: Text('GetX')),
             color: Colors.yellow.withOpacity(c.opacity.value),
           ),),
           Obx(() =>
    Slider(value: c.opacity.value,
      onChanged: (value){
        setState(() {
          c.setOpacity(value);
        });
      },
    )),

            Container(
              height: 150,
              width: 250,
             color: Colors.deepPurple,
             child: Center(
               child: Text('GetX State Management',
                 style: TextStyle(color: Colors.white.withOpacity(c.opacity.value)),),
             ),
            )
          ],
        ),
      ),
    );
  }
}
