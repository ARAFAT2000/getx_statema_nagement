import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'counter_controller.dart';


class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    ///controller page theke data reiceve krche (c)
    final Controller c = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Counter App GetX '),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Use Obx(()=> to update Text() whenever count is changed.
            Obx(() => Text("Clicks: ${c.count}",style: TextStyle(fontSize: 20),)),
            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(onPressed: (){
                  c.increment();
                }, child: Text('Increase')),

                OutlinedButton(onPressed: (){
                  c.decrement();
                }, child: Text('Decrease')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
