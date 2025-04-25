import 'package:get/get.dart';
import 'package:trendy_shop/controllers/auth/sign_up.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut(()=>SignUpControllerImp(),fenix: true);
  }
}
