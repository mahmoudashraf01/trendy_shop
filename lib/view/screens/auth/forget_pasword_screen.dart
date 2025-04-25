import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/controllers/auth/forget_passwrod.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/core/func/validate_input.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/widgets/action_btn.dart';
import 'package:trendy_shop/view/widgets/custom_input_field.dart';
import 'package:trendy_shop/view/widgets/my_back_button.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp forgetPasswrodController = Get.put(
      ForgetPasswordControllerImp(),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: MyBackButton(onPressed: () => Get.toNamed(AppRouters.login)),
        title: Text(
          'Forget Password'.tr,
          style: h3Bold.copyWith(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: forgetPasswrodController.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Verify Your Email'.tr,
                  style: h2Bold.copyWith(color: Colors.black87, fontSize: 28),
                ),
                const SizedBox(height: 12),

                const SizedBox(height: 50),

                // Email Field
                CustomInputField(
                  inputFiledController:
                      forgetPasswrodController.emailController,
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
                  },
                  secureTxt: false,
                ),

                // Remember me and Forgot Password
                const SizedBox(height: 30),

                // Continue Button
                ActionBtn(
                  btnText: 'Enter To Verify',
                  onPressed: () {
                    forgetPasswrodController.goToVerifyCode();
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
