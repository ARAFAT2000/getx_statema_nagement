import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;

class LogInController extends GetxController{

  final emailController= TextEditingController().obs;
  final passWordController= TextEditingController().obs;

    void logInApi()async{

      try{
        final response= await http.post(Uri.parse('https://reqres.in/api/login'),
            body:jsonEncode({
             'email':emailController.value.text,
              'password':passWordController.value.text
            }),
            headers:
            {'Content-Type':'application/json'});
        
        if(response.statusCode==200){
          Get.snackbar('Sorry', 'Plase try again',
              backgroundColor: Colors.red,

              snackPosition: SnackPosition.BOTTOM
          );
        }else{

          Get.snackbar(
              'Hi ', 'Succesfully Log In ',
              backgroundColor: Colors.yellow,
              snackPosition: SnackPosition.TOP
          );
        }
      }catch(e){
        print(e.toString());
      }
    }
}