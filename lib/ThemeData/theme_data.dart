import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ThemeChangeApp extends StatelessWidget {
  const ThemeChangeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Theme Change App GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
          Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.light),
              OutlinedButton(onPressed: (){
                Get.changeTheme(ThemeData.light());
              },
                  child:Text('Light Theme')),
            ],
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.dark_mode),
                OutlinedButton(onPressed: (){
                  Get.changeTheme(ThemeData.dark());
                },
                    child:Text('Dark Theme')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
