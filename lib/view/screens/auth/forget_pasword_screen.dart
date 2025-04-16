import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/controllers/auth/forget_passwrod.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/widgets/login/build_email_field.dart';
import 'package:trendy_shop/view/widgets/login/continue_button.dart';
import 'package:trendy_shop/view/widgets/my_back_button.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
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
        leading: MyBackButton(
          onPressed: () => Get.toNamed(AppRouters.onBoarding),
        ),
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
            key: _formKey,
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
                EmailField(
                  emailController: forgetPasswrodController.emailController,
                ),

                // Remember me and Forgot Password
                const SizedBox(height: 30),

                // Continue Button
                ContinueButton(formKey: _formKey),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
