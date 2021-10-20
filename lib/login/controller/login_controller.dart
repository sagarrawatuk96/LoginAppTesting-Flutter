import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/routes/routes.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isEnabled = false.obs,
      passwordCheck1 = false.obs,
      passwordCheck2 = false.obs,
      passwordCheck3 = false.obs,
      passwordCheck4 = false.obs;
  RxBool showPasswordValidations = false.obs;

  @override
  void onInit() {
    // adding listeners on init
    addListeners(); 
    super.onInit();
  }

  void addListeners() {
    //add email Listener
    emailController.addListener(() {
      if (passwordController.text.isNotEmpty &&
          emailController.text.isNotEmpty) {
       if (passwordCheck1.value &&
            passwordCheck2.value &&
            passwordCheck3.value &&
            passwordCheck4.value) {
          isEnabled.value = true;
        } else {
          isEnabled.value = false;
        }
      } else {
        isEnabled.value = false;
      }
    });
    //add password listener
    passwordController.addListener(() {
      if (passwordController.text.isEmpty) {
        showPasswordValidations.value = false;
      }

      if (passwordController.text.length < 6) {
        passwordCheck1.value = false;
      } else {
        passwordCheck1.value = true;
      }
      if (passwordController.text.contains(RegExp(r'[0-9]'))) {
        passwordCheck2.value = true;
      } else {
        passwordCheck2.value = false;
      }
      if (RegExp(r'^[a-zA-Z0-9]+$').hasMatch(passwordController.text)) {
        passwordCheck3.value = false;
      } else {
        passwordCheck3.value = true;
      }
      if (passwordController.text.contains(RegExp(r'[A-Z]'))) {
        passwordCheck4.value = true;
      } else {
        passwordCheck4.value = false;
      }
      if (passwordController.text.isNotEmpty &&
          passwordController.text.isNotEmpty) {
        if (passwordCheck1.value &&
            passwordCheck2.value &&
            passwordCheck3.value &&
            passwordCheck4.value) {
          isEnabled.value = true;
        } else {
          isEnabled.value = false;
        }
      } else {
        isEnabled.value = false;
      }
    });
  }

// on pressing login
  void onLogin() {
    Get.toNamed(Routes.profile);
  }
}
