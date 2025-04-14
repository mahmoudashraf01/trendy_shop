import 'package:flutter/material.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/view/screens/auth/login_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRouters.login: (context) => const LoginScreen(),
};
