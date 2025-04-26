import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/controllers/auth/sign_up.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/core/func/alet_exit.dart';
import 'package:trendy_shop/core/func/validate_input.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/widgets/custom_input_field.dart';
import 'package:trendy_shop/view/widgets/login/continue_button.dart';
import 'package:trendy_shop/view/widgets/login/social_login_options.dart';
import 'package:trendy_shop/view/widgets/my_back_button.dart';
import 'package:trendy_shop/view/widgets/sign_up/sign_up_options.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) async {
          if (!didPop) {
             alertExitApp(context);
          }
        },
        child: GetBuilder<SignUpControllerImp>(
          builder:
              (signUpController) => SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Form(
                    key: signUpController.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          'Create Profile'.tr,
                          style: h2Bold.copyWith(
                            color: Colors.black87,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 30),

                        //Name Field
                        CustomInputField(
                          inputFiledController: signUpController.nameController,
                          hintTxt: 'Enter your name',
                          labelTxt: 'Name',
                          icon: Icons.person_2_outlined,
                          validator: (value) {
                            return validateInput(
                              value: value!,
                              minValue: 5,
                              maxValue: 50,
                              valueType: 'username',
                            );
                          },
                          secureTxt: false,
                        ),
                        const SizedBox(height: 20),

                        //Eamil Field
                        CustomInputField(
                          inputFiledController:
                              signUpController.emailController,
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
                        const SizedBox(height: 20),

                        //Phone Field
                        CustomInputField(
                          inputFiledController:
                              signUpController.phoneController,
                          hintTxt: 'Enter your phone',
                          labelTxt: 'Phone',
                          icon: Icons.phone_in_talk_outlined,
                          validator: (value) {
                            return validateInput(
                              value: value!,
                              minValue: 5,
                              maxValue: 50,
                              valueType: 'phone',
                            );
                          },
                          secureTxt: false,
                        ),
                        const SizedBox(height: 20),

                        // Password Field
                        CustomInputField(
                          inputFiledController:
                              signUpController.passwordController,
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
                          },
                          secureTxt: true,
                        ),
                        const SizedBox(height: 20),

                        const SizedBox(height: 30),

                        // Continue Button
                        ContinueButton(
                          formKey: signUpController.formKey,
                          onPressed: () {
                            signUpController.signUp();
                          },
                        ),
                        const SizedBox(height: 40),

                        // Social Login Options
                        SocilaLoginOptions(),
                        const SizedBox(height: 20),

                        // Sign Up Option
                        SignUpOptions(
                          onTap: () => signUpController.goToLogin(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
