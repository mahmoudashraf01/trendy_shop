import 'package:flutter/material.dart';
import 'package:trendy_shop/data/data_source/static/static.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key, required this.imgIndex});
  final int imgIndex;

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.matrix(<double>[
        0.5,
        0,
        0,
        0,
        0,
        0,
        0.5,
        0,
        0,
        0,
        0,
        0,
        0.5,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ]),

      child: Image.asset(
        onBoardingList[imgIndex].imgUrl!,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
