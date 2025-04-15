import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/core/localization/change_local.dart';
import 'package:trendy_shop/utils/styles/colors.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/widgets/language/build_language_button.dart';

class LanguageScreenBody extends StatelessWidget {
  const LanguageScreenBody({
    super.key,
    required this.controller,
  });

  final LocalController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.appBordersColor,
            AppColors.appBorderslighterColor,
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.language, size: 100, color: Colors.white),
            const SizedBox(height: 40),
            Text(
              '3'.tr,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 60),
            buildLanguageButton(
              context: context,
              language: '5'.tr,
              flag: '🇺🇸',
              onPressed: () {
                controller.changeLang('en');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'English selected',
                      style: title1Bold.copyWith(color: AppColors.black),
                    ),
                    backgroundColor: AppColors.appBordersmorelighterColor,
                  ),
                );
                Get.toNamed(AppRouters.onBoarding);
              },
            ),
            const SizedBox(height: 20),
            buildLanguageButton(
              context: context,
              language: '4'.tr,
              flag: '🇸🇦',
              onPressed: () {
                controller.changeLang('ar');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      '6'.tr,
                      style: title1Bold.copyWith(color: AppColors.black),
                    ),
                    backgroundColor: AppColors.appBordersmorelighterColor,
                  ),
                );
                Get.toNamed(AppRouters.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
