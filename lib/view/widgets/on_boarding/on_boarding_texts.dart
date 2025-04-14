import 'package:flutter/material.dart';
import 'package:trendy_shop/data/data_source/static/static.dart';
import 'package:trendy_shop/utils/styles/text.dart';

class OnBoardingTexts extends StatelessWidget {
  const OnBoardingTexts({super.key, required this.textsIndex});
  final int textsIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Center(child: Text(onBoardingList[textsIndex].title!, style: h2Bold)),

          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.3,
            ),
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[textsIndex].body!,
                style: h4Bold,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
