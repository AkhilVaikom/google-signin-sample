import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeController extends GetxController{
  late GoogleSignIn googleSignIn;
  var isSignIn= false.obs;

  @override
  void onInit() {

    super.onInit();
  }
  @override
  void onClose() {

    super.onClose();
  }
}