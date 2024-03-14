import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;

class SignUpController extends GetxController{

  final emailController = TextEditingController().obs;
  final passWordController = TextEditingController().obs;

  signUpData()async{
    try{
      final response=await http.post(Uri.parse('https://reqres.in/api/register'),
          body: jsonEncode({
            'email':emailController.value.text,
            'password':passWordController.value.text

          }),
          headers: {
            'Content-Type':'application/json'
          });
      if(response.statusCode==200){
        Get.snackbar('Sorry', 'Plase try again',
            backgroundColor: Colors.red,

            snackPosition: SnackPosition.BOTTOM
        );
      }else{
        Get.snackbar(
            'Hi ', 'Succesfully Create an account ',
            backgroundColor: Colors.yellow,
            snackPosition: SnackPosition.TOP
        );
      }

    }catch(e){
      print(e.toString());
    }
  }
}