import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/controllers/auth/check_email.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/widgets/action_btn.dart';
import 'package:trendy_shop/view/widgets/login/build_email_field.dart';
import 'package:trendy_shop/view/widgets/my_back_button.dart';

class CheckEmailScreen extends StatefulWidget {
  const CheckEmailScreen({super.key});

  @override
  State<CheckEmailScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<CheckEmailScreen> {
  CheckEmailControllerImp checkEmailController = Get.put(
      CheckEmailControllerImp(),
    );
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: MyBackButton(onPressed: () => Get.toNamed(AppRouters.login)),
        title: Text(
          'Check Email'.tr,
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
                  'Success Sign Up'.tr,
                  style: h2Bold.copyWith(color: Colors.black87, fontSize: 28),
                ),
                const SizedBox(height: 12),

                const SizedBox(height: 50),

                // Email Field
                EmailField(
                  emailController: checkEmailController.emailController,
                ),

                // Remember me and Forgot Password
                const SizedBox(height: 30),

                // Continue Button
                ActionBtn(
                  btnText: 'Check',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                    checkEmailController.goSuccesSignUp();
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
