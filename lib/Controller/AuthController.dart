import 'package:book_flutter/Config/Messages.dart';
import 'package:book_flutter/Pages/HomePage/HomePage.dart';
import 'package:book_flutter/Pages/WelcomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;
  final auth = FirebaseAuth.instance;
  void loginWithEmail() async {
    isLoading.value = true;
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await auth.signInWithCredential(credential);
      successMessage('Login Success');
      Get.offAll(const HomePage());
    } catch (ex) {
      print(ex);
      errorMessage("Error ! Try Again");
    }
    isLoading.value = false;
  }

  void signout() async {
    await auth.signOut();
    successMessage('Logout');
    Get.offAll(const WelcomePage());
  }
}
