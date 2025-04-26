import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/controllers/auth/reset_password.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/core/func/validate_input.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/widgets/action_btn.dart';
import 'package:trendy_shop/view/widgets/custom_input_field.dart';
import 'package:trendy_shop/view/widgets/my_back_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
            key: resetPasswordControllerImp.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // password Field
                CustomInputField(
                  inputFiledController:
                      resetPasswordControllerImp.passwordController,
                  hintTxt: 'Enter New Password',
                  labelTxt: 'password',
                  icon: Icons.lock_outline,
                  validator: (value) {
                    return validateInput(
                      value: value!,
                      minValue: 5,
                      maxValue: 50,
                      valueType: 'passsword',
                    );
                  },
                  secureTxt: true,
                ),
                const SizedBox(height: 50),

                //Confirm Password
                CustomInputField(
                  inputFiledController:
                      resetPasswordControllerImp.confirmPasswrod,
                  hintTxt: 'Confirm New Password',
                  labelTxt: 'password',
                  icon: Icons.lock_outline,
                  validator: (value) {
                    return validateInput(
                      value: value!,
                      minValue: 5,
                      maxValue: 50,
                      valueType: 'passsword',
                    );
                  },
                  secureTxt: true,
                ),

                // Remember me and Forgot Password
                const SizedBox(height: 30),

                // Action Button
                ActionBtn(
                  btnText: 'Continue',
                  onPressed: () {
                    resetPasswordControllerImp.goToSuccessResetPassword();
                  }, width: double.infinity, textStyle: title1,
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
