import 'package:get/get.dart';
import 'package:trendy_shop/controllers/auth/login.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToLogin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToLogin() {
    // Delete the LoginController before navigating to LoginScreen
    if (Get.isRegistered<LoginControllerImp>()) {
      Get.delete<LoginControllerImp>();
    }
    Future.microtask(() {
      Get.offAllNamed(AppRouters.login);
    });
  }
}
