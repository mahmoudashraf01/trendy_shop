import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.keyboard_arrow_left_outlined,
        color: Colors.black54,
        size: 40,
      ),
      onPressed: onPressed,
    );
  }
}
