import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key, required this.iconPath});
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TODO: Implement social login
      },
      child: Stack(
        children: [
          Container(
            width: 60,
            height: 60,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 255, 199, 214),
                  blurRadius: 20,
                  offset: Offset(1, 1),
                  spreadRadius: 0,
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(12),
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(iconPath),
          ),
        ],
      ),
    );
  }
}
