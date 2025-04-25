import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/controllers/auth/success_reset_password.dart';
import 'package:trendy_shop/utils/styles/colors.dart';
import 'package:trendy_shop/utils/styles/text.dart';

class SuccessResetPassword extends StatefulWidget {
  const SuccessResetPassword({super.key});

  @override
  State<SuccessResetPassword> createState() => _SuccessResetPasswordState();
}

class _SuccessResetPasswordState extends State<SuccessResetPassword> {
  bool _showSuccessText = false;

  @override
  void initState() {
    super.initState();
    // Delay showing the success text by 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _showSuccessText = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp successResetPasswordControllerImp =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Success Image
            Image.asset(
              'assets/images/success.gif',
              height: 200,
              width: 200,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check_circle,
                    size: 100,
                    color: AppColors.appBordersColor,
                  ),
                );
              },
            ),
            const SizedBox(height: 30),

            // Success Text with Animation
            AnimatedOpacity(
              opacity: _showSuccessText ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: Text(
                'Password Reset Successful!'.tr,
                style: h2Bold.copyWith(
                  color: AppColors.appBordersColor,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 20),

            AnimatedOpacity(
              opacity: _showSuccessText ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: Text(
                'Your password has been reset successfully.\nYou can now login with your new password.'
                    .tr,
                style: title1.copyWith(color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 50),

            // Return to Login Button
            SizedBox(
              width: double.infinity,
              height: 56,
              child: AnimatedOpacity(
                opacity: _showSuccessText ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 500),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.appBordersColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  onPressed: () {
                    successResetPasswordControllerImp.goToLogin();
                  },
                  child: Text('Return to Login'.tr, style: title1Bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
