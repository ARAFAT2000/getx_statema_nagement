import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'log_in_controller.dart';
import 'next_page.dart';

class LogInWithGetX extends StatefulWidget {
  const LogInWithGetX({super.key});

  @override
  State<LogInWithGetX> createState() => _LogInWithGetXState();
}

class _LogInWithGetXState extends State<LogInWithGetX> {

  LogInController controller = Get.put(LogInController());

  final _Formkey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title:  Text('Log In with GetX '),
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
                Text('Log In '),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: controller.emailController.value,
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
                    controller: controller.passWordController.value,
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
                   controller.logInApi();
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
