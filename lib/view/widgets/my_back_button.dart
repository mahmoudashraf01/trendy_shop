import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/constants/app_routers.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.keyboard_arrow_left_outlined,
        color: Colors.black54,
        size: 40,
      ),
      onPressed: () => Get.toNamed(AppRouters.onBoarding),
    );
  }
}
