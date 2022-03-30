import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_signin_sample/controllers/login_controller.dart';
import 'package:google_signin_sample/widgets/login_button_widget.dart';
import 'package:google_signin_sample/widgets/profile_view_widget.dart';

import '../controllers/home_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Obx(() =>controller.googleAccount.value==null?LoginViewWidget():ProfileViewWidget(),
        // ),
        child: LoginViewWidget(),
      ),
    );
  }
}
