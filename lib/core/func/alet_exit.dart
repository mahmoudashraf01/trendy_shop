import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/utils/styles/colors.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/widgets/action_btn.dart';

void alertExitApp(BuildContext context) {
  Get.defaultDialog(
    title: 'Warning ❗',

    titleStyle: h5.copyWith(color: AppColors.black),
    middleText: 'Do you want exit application',
    middleTextStyle: title1.copyWith(color: AppColors.black),
    actions: [
      ActionBtn(
        width: 100,

        btnText: 'Yes',
        onPressed: () {
          exit(0);
        },
        textStyle: bodyBold,
      ),
      ActionBtn(
        btnText: 'Cancel',
        onPressed: () {
          Get.back();
        },
        width: 100,
        textStyle: bodyBold,
      ),
    ],
  );
}
