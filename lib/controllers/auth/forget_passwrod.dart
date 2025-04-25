import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController emailController;
  final formKey = GlobalKey<FormState>();

  @override
  checkEmail() {}

  @override
  goToVerifyCode() {
    var formdata = formKey.currentState;
    if (formdata!.validate()) {
      Get.toNamed(AppRouters.verifyCode);
    } else {
      print('Not valid');
    }
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
