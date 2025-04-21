import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/controllers/auth/reset_password.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/widgets/login/build_password_field.dart';
import 'package:trendy_shop/view/widgets/login/continue_button.dart';
import 'package:trendy_shop/view/widgets/my_back_button.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp resetPasswordControllerImp = Get.put(
      ResetPasswordControllerImp(),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: MyBackButton(
          onPressed: () => Get.toNamed(AppRouters.verifyCode),
        ),
        title: Text(
          'Reset Password'.tr,
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
                const SizedBox(height: 50),

                // Email Field
                PasswordField(
                  passwordController:
                      resetPasswordControllerImp.passwordController,
                  hintTxt: 'Enter New Password',
                ),
                const SizedBox(height: 50),
                PasswordField(
                  passwordController:
                      resetPasswordControllerImp.confirmPasswrod,
                  hintTxt: 'Confirm New Password',
                ),

                // Remember me and Forgot Password
                const SizedBox(height: 30),

                // Continue Button
                ContinueButton(
                  formKey: _formKey,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                    resetPasswordControllerImp.goToSuccessResetPassword();
                  },
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
