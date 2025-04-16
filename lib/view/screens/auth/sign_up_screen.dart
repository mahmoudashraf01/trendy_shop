import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/controllers/auth/sign_up.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/widgets/login/build_email_field.dart';
import 'package:trendy_shop/view/widgets/login/build_password_field.dart';
import 'package:trendy_shop/view/widgets/login/continue_button.dart';
import 'package:trendy_shop/view/widgets/login/social_login_options.dart';
import 'package:trendy_shop/view/widgets/my_back_button.dart';
import 'package:trendy_shop/view/widgets/sign_up/name_field.dart';
import 'package:trendy_shop/view/widgets/sign_up/phone_field.dart';
import 'package:trendy_shop/view/widgets/sign_up/sign_up_options.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp signUpController = Get.put(SignUpControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: MyBackButton(onPressed: () => Get.toNamed(AppRouters.login)),
        title: Text(
          'Sign Up'.tr,
          style: h3Bold.copyWith(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Create Profile'.tr,
                  style: h2Bold.copyWith(color: Colors.black87, fontSize: 28),
                ),
                const SizedBox(height: 30),

                //Name Field
                NameField(nameController: signUpController.nameController),
                const SizedBox(height: 20),

                // Email Field
                EmailField(emailController: signUpController.emailController),
                const SizedBox(height: 20),

                //Name Field
                PhoneField(phoneController: signUpController.phoneController),
                const SizedBox(height: 20),

                // Password Field
                PasswordField(
                  passwordController: signUpController.passwordController,
                ),
                const SizedBox(height: 20),

                const SizedBox(height: 30),

                // Continue Button
                ContinueButton(formKey: _formKey),
                const SizedBox(height: 40),

                // Social Login Options
                SocilaLoginOptions(),
                const SizedBox(height: 20),

                // Sign Up Option
                SignUpOptions(onTap: () => signUpController.goToLogin()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
