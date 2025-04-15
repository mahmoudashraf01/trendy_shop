import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/core/localization/change_local.dart';
import 'package:trendy_shop/core/localization/translations.dart';
import 'package:trendy_shop/core/services/services.dart';
import 'package:trendy_shop/routes.dart';
import 'package:trendy_shop/view/screens/language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await inialilService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController localController = Get.put(LocalController());
    return GetMaterialApp(
      locale: localController.intitlang,
      translations: AppTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Trendy Shop App',
      home: const AppLangauge(),
      routes: routes,
    );
  }
}
