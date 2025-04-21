import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();
  goSuccesSignUp();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController emailController;

  @override
  checkEmail() {}

  @override
  goSuccesSignUp() {
    Get.toNamed(AppRouters.scussessSignUp);
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
