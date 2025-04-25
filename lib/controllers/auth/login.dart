import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  @override
  login() {
    var formdata = formKey.currentState;
    if (formdata!.validate()) {
      print('valid');
    } else {
      print('Not valid');
    }
  }

  @override
  goToSignUp() {
    Future.microtask(() {
      Get.offNamed(AppRouters.signUp);
    });
  }

  @override
  goToForgetPassword() {
    Future.microtask(() {
      Get.toNamed(AppRouters.forgetPassword);
    });
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
