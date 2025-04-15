import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/core/localization/change_local.dart';
import 'package:trendy_shop/utils/styles/colors.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/screens/on_boarding_screen.dart';

class AppLangauge extends GetView<LocalController> {
  const AppLangauge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2'.tr, style: h3Bold),
        centerTitle: true,
        backgroundColor: AppColors.appBordersColor,
        elevation: 0,
      ),
      body: Container(
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
              _buildLanguageButton(
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
              _buildLanguageButton(
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
      ),
    );
  }

  Widget _buildLanguageButton({
    required BuildContext context,
    required String language,
    required String flag,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal.shade700,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 5,
        shadowColor: Colors.black54,
      ),
      child: Container(
        width: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(flag, style: const TextStyle(fontSize: 24)),
            const SizedBox(width: 15),
            Text(
              language,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
