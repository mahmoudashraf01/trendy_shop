import 'package:flutter/material.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/view/screens/auth/login_screen.dart';
import 'package:trendy_shop/view/screens/auth/sign_up_screen.dart';
import 'package:trendy_shop/view/screens/on_boarding_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRouters.login: (context) => const LoginScreen(),
  AppRouters.signUp: (context) => const SignUpScreen(),
  AppRouters.onBoarding: (context) => const PageBuilderOnBoardingScreen(),
};
