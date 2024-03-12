import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:getx_statema_nagement/Switch/switch_controller.dart';

class SwitchGetX extends StatefulWidget {
  const SwitchGetX({super.key});

  @override
  State<SwitchGetX> createState() => _SwitchGetXState();
}

class _SwitchGetXState extends State<SwitchGetX> {
  SwitchController c= Get.put(SwitchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title:  Text('Switch App GetX '),
      ),

      body: Center(
        child: Column(
          children: [
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('This is Flutter Application'),
                Switch(value: c.data.value,
                    onChanged: (value){
                      setState(() {
                        c.getSwitch(value);
                      });
                    })
              ],
            ))
          ],
        ),
      ),
    );
  }
}
