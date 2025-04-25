import 'package:flutter/material.dart';
import 'package:trendy_shop/utils/styles/colors.dart';
import 'package:trendy_shop/view/screens/func/otp_create_style_fun.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerifyOtpTextField extends StatelessWidget {
  const VerifyOtpTextField({super.key, required this.onSubmit});
  final void Function(String) onSubmit;

  @override
  Widget build(BuildContext context) {
    List<TextStyle> otpTextStyles = [
      createStyle(AppColors.accentPurpleColor, context),
      createStyle(AppColors.accentYellowColor, context),
      createStyle(AppColors.accentDarkGreenColor, context),
      createStyle(AppColors.accentOrangeColor, context),
      createStyle(AppColors.accentPinkColor, context),
      createStyle(AppColors.accentPurpleColor, context),
    ];
    return OtpTextField(
      numberOfFields: 6,
      borderColor: AppColors.accentPurpleColor,
      focusedBorderColor: AppColors.accentPurpleColor,
      styles: otpTextStyles,
      showFieldAsBox: false,
      borderWidth: 4.0,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here if necessary
      },
      //runs when every textfield is filled
      onSubmit: onSubmit,
    );
  }
}
