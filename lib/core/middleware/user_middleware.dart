import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/core/services/services.dart';

class UserMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  TrensdyShopServices trensdyShopServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (trensdyShopServices.sharedPreferences.getString('onboarding') == '1') {
      return const RouteSettings(name: AppRouters.signUp);
    }
    return null;
  }
}
