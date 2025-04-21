import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';

abstract class ResetPasswordController extends GetxController {
  checkEmail();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController confirmPasswrod;
  late TextEditingController passwordController;

  @override
  checkEmail() {}

  @override
  goToSuccessResetPassword() {
    Get.toNamed(AppRouters.scussessResetPass);
  }

  @override
  void onInit() {
    confirmPasswrod = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    confirmPasswrod.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
