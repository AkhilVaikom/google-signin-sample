import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_signin_sample/controllers/login_controller.dart';

class LoginViewWidget extends StatelessWidget {
   LoginViewWidget({Key? key}) : super(key: key);
  final loginController= Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Google Sign In"),
        ElevatedButton(onPressed: (){
          loginController.login();
        }, child: Text("Signin with Google",style: TextStyle(fontSize: 30),))
      ],
    );
  }
}
