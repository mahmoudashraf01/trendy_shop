import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/utils/styles/colors.dart';

class ActionBtn extends StatelessWidget {
  const ActionBtn({
    super.key,
    required this.btnText,
    required this.onPressed,
    required this.width,
    required this.textStyle,
  });
  final String btnText;
  final void Function() onPressed;
  final double? width;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.appBordersColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        onPressed: onPressed,
        child: Text(btnText.tr, style: textStyle),
      ),
    );
  }
}
