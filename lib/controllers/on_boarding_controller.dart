import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  @override
  next() {}

  @override
  onPageChanged(int index) {}
}
