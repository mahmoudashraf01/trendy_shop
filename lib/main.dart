import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:trendy_shop/routes.dart';
import 'package:trendy_shop/view/screens/choose_product_on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trendy Shop App',
      home: const PageBuilderOnBoardingScreen(),
      routes: routes,
    );
  }
}
