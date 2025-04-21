import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';

abstract class VerifyCodeController extends GetxController {
  checkEmail();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {

  @override
  checkEmail() {}

  @override
  goToResetPassword() {
    Get.toNamed(AppRouters.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }

}
