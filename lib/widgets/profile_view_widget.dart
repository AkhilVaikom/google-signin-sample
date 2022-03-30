import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class ProfileViewWidget extends StatelessWidget {
   ProfileViewWidget({Key? key}) : super(key: key);
   final loginController= Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: Image.network(loginController.googleAccount.value!.photoUrl?? '').image,
            radius: 100,
          ),
          Text(loginController.googleAccount.value!.displayName?? '',style: const TextStyle(fontSize: 26),),
          Text(loginController.googleAccount.value!.email),
          TextButton.icon(onPressed: (){
            loginController.logout();
          }, icon: const Icon(Icons.logout), label: const Text("Logout"))
        ],
      ),
    ),);
  }
}