import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/utils/styles/colors.dart';
import 'package:trendy_shop/utils/styles/text.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    required this.inputFiledController,
    required this.hintTxt,
    required this.labelTxt,
    required this.icon,
    required this.validator,
    required this.secureTxt,
    this.onTapSuffixIcon,
  });
  final TextEditingController inputFiledController;
  final String hintTxt;
  final String labelTxt;
  final IconData icon;
  final String? Function(String?) validator;
  final bool secureTxt;
  final void Function()? onTapSuffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputFiledController,
      obscureText: secureTxt,
      decoration: InputDecoration(
        labelText: labelTxt.tr,
        hintText: hintTxt.tr,
        labelStyle: title2.copyWith(color: Colors.black),
        hintStyle: title2Bold.copyWith(color: Colors.black54),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: Colors.black12),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: AppColors.appBordersColor),
          gapPadding: 10,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: Colors.red),
          gapPadding: 10,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: Colors.red),
          gapPadding: 10,
        ),
        suffixIcon: InkWell(onTap: onTapSuffixIcon, child: Icon(icon)),
      ),
      validator: validator,
    );
  }
}
