import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:trendy_shop/controllers/on_boarding_controller.dart';
import 'package:trendy_shop/utils/styles/colors.dart';
import 'package:trendy_shop/utils/styles/text.dart';

class CustomOnboardingButton extends GetView<OnBoardingControllerImp> {
  const CustomOnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.appBordersColor),
      ),
      onPressed: () {
        controller.next();
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 15,
          left: 50,
          right: 50,
        ),
        child: Text('Continue', style: title1Bold),
      ),
    );
  }
}
