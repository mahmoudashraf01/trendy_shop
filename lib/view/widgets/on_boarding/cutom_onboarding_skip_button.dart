import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/controllers/on_boarding_controller.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/utils/styles/text.dart';

class CustomOnboardingSkipButton extends GetView<OnBoardingControllerImp> {
  const CustomOnboardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.offAllNamed(AppRouters.login),
      child: Text('Skip', style: title1Bold),
    );
  }
}
