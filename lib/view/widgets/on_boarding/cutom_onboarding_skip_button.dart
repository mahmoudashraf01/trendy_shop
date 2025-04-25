import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/utils/styles/text.dart';

class CustomOnboardingSkipButton extends StatelessWidget {
  const CustomOnboardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.offAllNamed(AppRouters.signUp),
      child: Text('Skip', style: title1Bold),
    );
  }
}
