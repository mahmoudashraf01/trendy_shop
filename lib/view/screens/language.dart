import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/localization/change_local.dart';
import 'package:trendy_shop/utils/styles/colors.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/widgets/language/languge_screen_body.dart';

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
      body: LanguageScreenBody(controller: controller),
    );
  }
}

