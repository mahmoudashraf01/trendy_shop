import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/utils/styles/colors.dart';
import 'package:trendy_shop/utils/styles/text.dart';

class SignInOptions extends StatelessWidget {
  const SignInOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ".tr,
          style: title1.copyWith(color: Colors.black87),
        ),
        GestureDetector(
          onTap: () {
            // TODO: Navigate to sign up screen
          },
          child: Text(
            'Sign Up'.tr,
            style: title2.copyWith(color: AppColors.appBordersColor),
          ),
        ),
      ],
    );
  }
}
