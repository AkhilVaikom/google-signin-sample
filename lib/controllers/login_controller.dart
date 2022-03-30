import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_signin_sample/views/home_screen.dart';
import 'package:google_signin_sample/views/login_screen.dart';
import 'package:google_signin_sample/views/welcome_screen.dart';
import 'package:google_signin_sample/widgets/profile_view_widget.dart';

class LoginController extends GetxController{

  var googleSignin= GoogleSignIn();
  var googleAccount= Rx<GoogleSignInAccount?>(null);


  @override
  void onInit() {

    super.onInit();
  }
  @override
  void onClose() {

    super.onClose();
  }

  login() async{
    googleAccount.value=await googleSignin.signIn();

    print(googleAccount.value!.authentication);
    Get.off(()=>HomeScreen());
  }
  logout() async{
    googleAccount.value=await googleSignin.signOut();
    Get.offAll(()=>LoginScreen());
  }


}