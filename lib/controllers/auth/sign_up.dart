import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  bool isShowPassword = true;

  showPassword() {
   isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  signUp() {
    var formdata = formKey.currentState;
    if (formdata!.validate()) {
      Get.offNamed(AppRouters.signUpVerifyCode);
    } else {
      print('Not valid');
    }
  }

  @override
  goToLogin() {
    Get.offNamed(AppRouters.login);
  }

  @override
  void onInit() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
