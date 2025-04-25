import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/controllers/auth/login.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/core/func/validate_input.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/widgets/custom_input_field.dart';
import 'package:trendy_shop/view/widgets/login/continue_button.dart';
import 'package:trendy_shop/view/widgets/login/remember_to_forget_row.dart';
import 'package:trendy_shop/view/widgets/login/sign_in_options.dart';
import 'package:trendy_shop/view/widgets/login/social_login_options.dart';
import 'package:trendy_shop/view/widgets/my_back_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    LoginControllerImp loginController = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: MyBackButton(
          onPressed: () => Get.toNamed(AppRouters.onBoarding),
        ),
        title: Text(
          'Sign in'.tr,
          style: h3Bold.copyWith(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: loginController.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Welcome Back'.tr,
                  style: h2Bold.copyWith(color: Colors.black87, fontSize: 28),
                ),
                const SizedBox(height: 12),
                Text(
                  'Sign in with your email and password\nor continue with social media'
                      .tr,
                  textAlign: TextAlign.center,
                  style: title1.copyWith(color: Colors.black87),
                ),
                const SizedBox(height: 50),

                // Email Field
                CustomInputField(
                  inputFiledController: loginController.emailController,
                  hintTxt: 'Enter your email',
                  labelTxt: 'Email',
                  icon: Icons.email_outlined,
                  validator: (value) {
                    return validateInput(
                      value: value!,
                      minValue: 5,
                      maxValue: 50,
                      valueType: 'email',
                    );
                  }, secureTxt: false,
                ),
                const SizedBox(height: 20),

                // Password Field
                CustomInputField(
                  inputFiledController: loginController.passwordController,
                  hintTxt: 'Enter your Password',
                  labelTxt: 'password',
                  icon: Icons.lock_outline,
                  validator: (value) {
                    return validateInput(
                      value: value!,
                      minValue: 5,
                      maxValue: 50,
                      valueType: 'passsword',
                    );
                  }, secureTxt: true,
                ),
                const SizedBox(height: 20),

                // Remember me and Forgot Password
                RememberForgetRow(
                  rememberMe: false,
                  onChanged: (value) {
                    
                  },
                  onPressed: loginController.goToForgetPassword, // <-- FIXED HERE
                ),
                const SizedBox(height: 30),

                // Continue Button
                ContinueButton(
                  formKey: loginController.formKey,
                  onPressed: () {
                    loginController.login();
                  },
                ),
                const SizedBox(height: 40),

                // Social Login Options
                SocilaLoginOptions(),
                const SizedBox(height: 20),

                // Sign Up Option
                SignInOptions(onTap: loginController.goToSignUp), // <-- FIXED HERE
              ],
            ),
          ),
        ),
      ),
    );
  }
}
