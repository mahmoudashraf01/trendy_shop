import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController confirmPasswrod;
  late TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  @override
  resetPassword() {}

  @override
  goToSuccessResetPassword() {
    var formdata = formKey.currentState;
    if (formdata!.validate()) {
      Get.offNamed(AppRouters.scussessResetPass);
    } else {
      print('Not valid');
    }
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
