import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/utils/styles/colors.dart';
import 'package:trendy_shop/utils/styles/text.dart';

class SignUpOptions extends StatelessWidget {
  const SignUpOptions({super.key, required this.onTap});

  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account? ".tr,
          style: title1.copyWith(color: Colors.black87),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            'Sign in'.tr,
            style: title2.copyWith(color: AppColors.appBordersColor),
          ),
        ),
      ],
    );
  }
}
