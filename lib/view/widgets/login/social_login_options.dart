import 'package:flutter/material.dart';
import 'package:trendy_shop/view/widgets/login/social_icons.dart';

class SocilaLoginOptions extends StatelessWidget {
  const SocilaLoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcon(iconPath: 'assets/images/Facebook.svg'),
        const SizedBox(width: 20),
        SocialIcon(iconPath: 'assets/images/Group_90.svg'),
        const SizedBox(width: 20),
        SocialIcon(iconPath: 'assets/images/gmail.svg'),
      ],
    );
  }
}
