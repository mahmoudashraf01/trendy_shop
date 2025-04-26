import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/core/middleware/user_middleware.dart';
import 'package:trendy_shop/view/screens/auth/login_check_email.dart';
import 'package:trendy_shop/view/screens/auth/forget_pasword_screen.dart';
import 'package:trendy_shop/view/screens/auth/login_screen.dart';
import 'package:trendy_shop/view/screens/auth/reset_password.dart';
import 'package:trendy_shop/view/screens/auth/sign_up_screen.dart';
import 'package:trendy_shop/view/screens/auth/sign_up_verify_code.dart';
import 'package:trendy_shop/view/screens/auth/success_sign_up.dart';
import 'package:trendy_shop/view/screens/auth/succsess_reset_password.dart';
import 'package:trendy_shop/view/screens/auth/verify_code.dart';
import 'package:trendy_shop/view/screens/home/home_screen.dart';
import 'package:trendy_shop/view/screens/language/language.dart';
import 'package:trendy_shop/view/screens/on_boarding_screen.dart';

List<GetPage<dynamic>>? getroutes = [
  GetPage(
    name: AppRouters.language,
    page: () => const AppLangauge(),
    middlewares: [UserMiddleware()],
  ),
  GetPage(name: AppRouters.login, page: () => const LoginScreen()),
  GetPage(name: AppRouters.signUp, page: () => const SignUpScreen()),
  GetPage(
    name: AppRouters.onBoarding,
    page: () => const PageBuilderOnBoardingScreen(),
  ),
  GetPage(
    name: AppRouters.forgetPassword,
    page: () => const ForgetPasswordScreen(),
  ),
  GetPage(name: AppRouters.verifyCode, page: () => const VerifyCodeScreen()),
  GetPage(
    name: AppRouters.resetPassword,
    page: () => const ResetPasswordScreen(),
  ),
  GetPage(
    name: AppRouters.logincheckEmail,
    page: () => const LoginCheckEmailScreen(),
  ),
  GetPage(name: AppRouters.scussessSignUp, page: () => const SuccessSignUp()),
  GetPage(
    name: AppRouters.scussessResetPass,
    page: () => const SuccessResetPassword(),
  ),
  GetPage(
    name: AppRouters.signUpVerifyCode,
    page: () => const SignUpVerifyCode(),
  ),
  GetPage(name: AppRouters.home, page: () => const HomeScreen()),
];
