import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/utils/styles/colors.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.appBordersColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            // TODO: Implement login functionality
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Processing login...'.tr)));
          }
        },
        child: Text(
          'Continue'.tr,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
