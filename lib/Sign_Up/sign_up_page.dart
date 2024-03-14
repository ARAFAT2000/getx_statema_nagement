import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statema_nagement/Sign_Up/sign_up_controller.dart';

import '../Log_In_App/next_page.dart';



class SignUpWithGetX extends StatefulWidget {
  const SignUpWithGetX({super.key});

  @override
  State<SignUpWithGetX> createState() => _SignUpWithGetXState();
}

class _SignUpWithGetXState extends State<SignUpWithGetX> {

  SignUpController signUpController=Get.put(SignUpController());

  final _Formkey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title:  Text('Sign Up with GetX '),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _Formkey,
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign Up '),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: signUpController.emailController.value,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: signUpController.passWordController.value,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(onPressed: (){
                    if(_Formkey.currentState!.validate()){
                      signUpController.signUpData();
                      Get.to(NextPage());
                    }
                  },
                      child: Text('Long In'))


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
