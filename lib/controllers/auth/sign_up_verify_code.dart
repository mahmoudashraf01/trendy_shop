import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';

abstract class SignUpVerifyCodeController extends GetxController {
  checkEmail();
  goToSuccessSignUp();
}

class SignUpVerifyCodeControllerImp extends SignUpVerifyCodeController {

  @override
  checkEmail() {}

  @override
  goToSuccessSignUp() {
    Get.toNamed(AppRouters.scussessSignUp);
  }

  @override
  void onInit() {
    super.onInit();
  }

}
