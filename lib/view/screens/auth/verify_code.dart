import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/controllers/auth/verfiy_code.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/widgets/my_back_button.dart';
import 'package:trendy_shop/view/widgets/verify_code/otp_text_field.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp verifyCodeControllerImp = Get.put(
      VerifyCodeControllerImp(),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: MyBackButton(
          onPressed: () => Get.toNamed(AppRouters.forgetPassword),
        ),
        title: Text(
          'Verify Code'.tr,
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
                  'Enter Your Verification Code'.tr,
                  style: h2Bold.copyWith(color: Colors.black87, fontSize: 28),
                ),

                const SizedBox(height: 50),

                // Email Field
                VerifyOtpTextField(
                  onSubmit: (String verificationCode) {
                    verifyCodeControllerImp.goToResetPassword();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
