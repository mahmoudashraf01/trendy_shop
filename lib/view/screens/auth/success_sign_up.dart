import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';
import 'package:trendy_shop/utils/styles/colors.dart';
import 'package:trendy_shop/utils/styles/text.dart';

class SuccessSignUp extends StatefulWidget {
  const SuccessSignUp({super.key});

  @override
  State<SuccessSignUp> createState() => _SuccessSignUpState();
}

class _SuccessSignUpState extends State<SuccessSignUp> {
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
                'Successfull sign up.\nYou can now explore our trndy shop app.'
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
                    Get.offAllNamed(AppRouters.home);
                  },
                  child: Text(
                    'Explore our app'.tr,
                    style: title1Bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}