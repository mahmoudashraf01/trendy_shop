import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/controllers/on_boarding_controller.dart';
import 'package:trendy_shop/view/widgets/on_boarding/on_boarding_body.dart';

class PageBuilderOnBoardingScreen extends StatelessWidget {
  const PageBuilderOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return SafeArea(
      child: Scaffold(
        body: OnboardingBody(),
      ),
    );
  }
}

