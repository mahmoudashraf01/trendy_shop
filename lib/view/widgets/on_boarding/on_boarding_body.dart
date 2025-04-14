import 'package:flutter/material.dart';
import 'package:trendy_shop/data/data_source/static/static.dart';
import 'package:trendy_shop/utils/styles/colors.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/widgets/on_boarding/background_image.dart';
import 'package:trendy_shop/view/widgets/on_boarding/on_boarding_texts.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            BackgroundImage(imgIndex: index),
            OnBoardingTexts(textsIndex: index,),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.7,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(onBoardingList.length, (index) {
                        return AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 900),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: AppColors.appBordersColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      }),
                    ],
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        AppColors.appBordersColor,
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        bottom: 15,
                        left: 50,
                        right: 50,
                      ),
                      child: Text('Continue', style: title1Bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

