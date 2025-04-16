import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController emailController;

  @override
  checkEmail() {}

  @override
  goToVerifyCode() {
    Get.toNamed(AppRouters.verifyCode);
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
}
