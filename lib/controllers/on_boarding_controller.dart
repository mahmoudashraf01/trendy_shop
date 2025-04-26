import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/core/services/services.dart';
import 'package:trendy_shop/data/data_source/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currPage = 0;

  late PageController pageController;

  TrensdyShopServices trensdyShopServices = Get.find();
  @override
  next() {
    currPage++;
    if (currPage > onBoardingList.length - 1) {
      trensdyShopServices.sharedPreferences.setString('onboarding', '1');
      Get.offAllNamed(AppRouters.signUp);
    } else {
      pageController.animateToPage(
        currPage,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  onPageChanged(int index) {
    currPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
