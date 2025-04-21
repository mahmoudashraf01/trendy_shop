import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';

abstract class SignUpCheckEmailController extends GetxController {
  checkEmail();
  goToSignUpVerifyCode();
}

class SignUpCheckEmailControllerImp extends SignUpCheckEmailController {
  late TextEditingController emailController;

  @override
  checkEmail() {

  }

  @override
  goToSignUpVerifyCode() {
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
