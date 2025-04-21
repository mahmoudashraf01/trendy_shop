import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';

abstract class LoginCheckEmailController extends GetxController {
  checkEmail();
  goSignUpVerifyCode();
}

class LoginCheckEmailControllerImp extends LoginCheckEmailController {
  late TextEditingController emailController;

  @override
  checkEmail() {}

  @override
  goSignUpVerifyCode() {
    Get.toNamed(AppRouters.signUpVerifyCode);
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
