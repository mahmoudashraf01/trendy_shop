import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/data/data_source/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currPage = 0;

  late PageController pageController;
  @override
  next() {
    currPage++;
    if (currPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRouters.login);
    }
    else{
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
