import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
}

class LoginControllerImp extends LoginController {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  login() {}

  @override
  goToSignUp() {
    Get.toNamed(AppRouters.signUp);
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
