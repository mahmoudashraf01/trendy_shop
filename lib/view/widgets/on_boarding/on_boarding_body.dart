import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:trendy_shop/controllers/on_boarding_controller.dart';
import 'package:trendy_shop/data/data_source/static/static.dart';
import 'package:trendy_shop/view/widgets/on_boarding/background_image.dart';
import 'package:trendy_shop/view/widgets/on_boarding/cutom_onboarding_button.dart';
import 'package:trendy_shop/view/widgets/on_boarding/get_builder_controller.dart';
import 'package:trendy_shop/view/widgets/on_boarding/on_boarding_texts.dart';

class OnboardingBody extends GetView<OnBoardingControllerImp> {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            BackgroundImage(imgIndex: index),
            OnBoardingTexts(textsIndex: index),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.7,
              ),
              child: Column(
                children: [
                  GetBuilderController(),
                  SizedBox(height: 30),
                  CustomOnboardingButton(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}


