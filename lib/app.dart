import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Counter_app/counter_page.dart';
import 'Image_picker/images_picker.dart';
import 'Log_In_App/log_in_page.dart';
import 'Love_App/love_page.dart';
import 'Size/Size_getx.dart';
import 'Slider_Example/slider.dart';
import 'Switch/switch_getx.dart';
import 'ThemeData/theme_data.dart';
import 'Translation/controller_translation.dart';
import 'Translation/trans_lation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      ///translation ar jnno
      // translations: Messeges(),
      // locale:Locale('en', 'US') ,
      // fallbackLocale: Locale('en', 'UK'),

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3:false,
      ),
      home: LogInWithGetX(),
    );
  }
}