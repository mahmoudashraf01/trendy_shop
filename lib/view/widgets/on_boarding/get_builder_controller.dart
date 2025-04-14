import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/controllers/on_boarding_controller.dart';
import 'package:trendy_shop/data/data_source/static/static.dart';
import 'package:trendy_shop/utils/styles/colors.dart';

class GetBuilderController extends StatelessWidget {
  const GetBuilderController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(onBoardingList.length, (index) {
              return AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                duration: const Duration(milliseconds: 900),
                width: controller.currPage == index ? 20 : 10,
                height: 10,
                decoration: BoxDecoration(
                  color:
                      controller.currPage == index
                          ? AppColors.appBordersColor
                          : AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }),
          ],
        );
      },
    );
  }
}
