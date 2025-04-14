import 'package:flutter/material.dart';
import 'package:trendy_shop/view/screens/choose_product_on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trendy Shop App',
      home: const PageBuilderOnBoardingScreen(),
    );
  }
}
