import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/utils/styles/colors.dart';
import 'package:trendy_shop/utils/styles/text.dart';

class RememberForgetRow extends StatelessWidget {
  const RememberForgetRow({
    super.key,
    required this.rememberMe,
    required this.onChanged, required this.onPressed,
  });

  final bool rememberMe;
  final void Function(bool?) onChanged;
final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: rememberMe,
          activeColor: AppColors.appBordersColor,
          onChanged: onChanged,
        ),
        Text('Remember me'.tr, style: title2.copyWith(color: Colors.black87)),
        const Spacer(),
        TextButton(
          onPressed: onPressed,
          child: Text(
            'Forgot Password'.tr,
            style: body.copyWith(
              decoration: TextDecoration.underline,
              color: AppColors.grey,
              fontSize: 15,
              decorationColor: AppColors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
