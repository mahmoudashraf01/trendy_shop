import 'dart:ui';

import 'package:get/get.dart';
import 'package:trendy_shop/core/services/services.dart';

class LocalController extends GetxController {
  Locale? intitlang;

  TrensdyShopServices trensdyShopServices = Get.find();

  changeLang(String langCode) {
    Locale? locale = Locale(langCode);
    trensdyShopServices.sharedPreferences.setString('lang', langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefrencesLang = trensdyShopServices.sharedPreferences
        .getString('lang');
    if (sharedPrefrencesLang == 'ar') {
      intitlang = const Locale('ar');
    } else if(sharedPrefrencesLang == 'en') {
      intitlang = const Locale('en');
    }else{
      intitlang = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
